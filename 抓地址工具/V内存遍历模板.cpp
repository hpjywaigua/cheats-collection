
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/uio.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdbool.h>
#include <dirent.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>

using namespace std;

#if defined(__arm__)
int process_vm_readv_syscall = 376;
int process_vm_writev_syscall = 377;
#elif defined(__aarch64__)
int process_vm_readv_syscall = 270;
int process_vm_writev_syscall = 271;
#elif defined(__i386__)
int process_vm_readv_syscall = 347;
int process_vm_writev_syscall = 348;
#else
int process_vm_readv_syscall = 310;
int process_vm_writev_syscall = 311;
#endif

int pid,Memory,总次数;

struct map_node {
    long int start_addr; 
    long int end_addr;  
    struct map_node *next;  
};

ssize_t process_v(pid_t __pid, const struct iovec *__local_iov, unsigned long __local_iov_count,
				  const struct iovec *__remote_iov, unsigned long __remote_iov_count,
				  unsigned long __flags, bool iswrite)
{
	return syscall((iswrite ? process_vm_writev_syscall : process_vm_readv_syscall), __pid,
				   __local_iov, __local_iov_count, __remote_iov, __remote_iov_count, __flags);
}

bool pvm(void *address, void *buffer, size_t size, bool iswrite)
{
	struct iovec local[1];
	struct iovec remote[1];
	local[0].iov_base = buffer;
	local[0].iov_len = size;
	remote[0].iov_base = address;
	remote[0].iov_len = size;
	if (getpid() < 0)
	{
		return false;
	}
	ssize_t bytes = process_v(pid, local, 1, remote, 1, 0, iswrite);
	return bytes == size;
}
// 读取内存
bool vm_readv(unsigned long address, void *buffer, size_t size)
{
	return pvm(reinterpret_cast < void *>(address), buffer, size, false);
}
bool vm_writev(unsigned long address, void *buffer, size_t size)
{
	return pvm(reinterpret_cast < void *>(address), buffer, size, true);
}
int getDword(unsigned long addr)
{
    int var = 0;
    vm_readv(addr, &var, 4);
    return (var);
}
float getFloat(unsigned long addr)
{
    float var = 0;
    vm_readv(addr, &var, 4);
    return (var);
}
void writefloat(unsigned long addr, float data)
{
    vm_writev(addr, &data, 4);
}
void writedword(unsigned long addr, int data)
{
    vm_writev(addr, &data, 4);
}
    

int getPID(const char *packageName)
{
	int id = -1;
	DIR *dir;
	FILE *fp;
	char filename[64];
	char cmdline[64];
	struct dirent *entry;
	dir = opendir("/proc");
	while ((entry = readdir(dir)) != NULL)
	{
		id = atoi(entry->d_name);
		if (id != 0)
		{
			sprintf(filename, "/proc/%d/cmdline", id);
			fp = fopen(filename, "r");
			if (fp)
			{
				fgets(cmdline, sizeof(cmdline), fp);
				fclose(fp);
				if (strcmp(packageName, cmdline) == 0)
				{
					return id;
				}
			}
		}
	}
	closedir(dir);
	return -1;
}

void readmaps_v(struct map_node **head) {
    char lj[32], buff[256];
    FILE *fp;
    sprintf(lj, "/proc/%d/maps", pid);
    fp = fopen(lj, "r");
    if (fp == NULL) {
        return;
    }
    while (fgets(buff, sizeof(buff), fp) != NULL) {
        if (strstr(buff, "rw") != NULL && strstr(buff, "/dev/kgsl-3d0") != NULL) {
            unsigned long start_addr, end_addr;
            sscanf(buff, "%lx-%lx", &start_addr, &end_addr);
            long int count = (end_addr - start_addr) / 0x4;
            if (count != 1024) continue;
            struct map_node *node = (struct map_node *)malloc(sizeof(struct map_node));
            node->start_addr = start_addr;
            node->end_addr = end_addr;
            node->next = NULL;
            if (*head == NULL) {
                *head = node;
            } else {
                struct map_node *cur = *head;
                while (cur->next != NULL) {
                    cur = cur->next;
                }
                cur->next = node;
            }
        }
    }
    fclose(fp);
}

void free_maps(struct map_node *head) {
    struct map_node *cur = head;
    while (cur != NULL) {
        struct map_node *temp = cur;
        cur = cur->next;
        free(temp);
    }
}

void print_maps(struct map_node *head) {
  struct map_node *cur = head;
  while (cur != NULL) {
    long int Objaddr,i = 0;
  //  printf("start: %lx, end: %lx\n", cur->start_addr, cur->end_addr);
    while(Objaddr<=cur->end_addr) {
      Objaddr = cur->start_addr+4*i;      
      if (getDword(Objaddr) == 8200 && getDword(Objaddr+0x4)== 1194347288) {
          writedword(Objaddr,6);
          printf("上色地址:0x%lx \n",Objaddr,i);
        }
      if (getDword(Objaddr) == 8200 && getDword(Objaddr+0x4)== 1194328077 && getDword(Objaddr+0x8)== 8201) {
          writedword(Objaddr,7);
          writedword(Objaddr+0x4,6);
          printf("特殊上色地址:0x%lx \n",Objaddr,i);
        }
      if (getDword(Objaddr) == -2147450868 && getDword(Objaddr+0x4) == 1669758979) {
          writedword(Objaddr,-2145943540);
          printf("马赛克地址:0x%lx \n",Objaddr,i);
        }
      if (getDword(Objaddr) == -2145972052 && getDword(Objaddr+0x4) == 1670184982) {
          writedword(Objaddr,-2147479380);
          printf("透明化地址:0x%lx \n",Objaddr,i);
        }
      if (getDword(Objaddr) == -2145972052 && getDword(Objaddr+0x4) == 1669562390) {
          writedword(Objaddr,-2147479380);
          printf("特殊透明化地址:0x%lx \n",Objaddr,i);
        }
      if (getDword(Objaddr) == -2146955184) {
          writedword(Objaddr,528464);
          printf("房区防闪地址:0x%lx \n",Objaddr,i);
        }
      if (getDword(Objaddr) == -2147020670) {
          writedword(Objaddr,462978);
          printf("山体防闪地址:0x%lx \n",Objaddr,i);
        }
      i++;
    }
    总次数+=i;
    cur = cur->next;
  }
}



	
int main()
{
    pid = getPID("com.pubg.krmobile");
    if (pid <= 0) {
      printf("无法找到进程,请打开游戏！\n");
    }
	struct map_node *head = NULL; //初始化链表
    readmaps_v(&head);
    
    print_maps(head); //原神启动！！！
   printf("遍历结束！共遍历%d次\n",总次数);
    free_maps(head); //释放链表
    syscall(SYS_close,Memory);
exit(0);
return 0;
}