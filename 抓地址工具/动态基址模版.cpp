// 动态基址CPP by~up主波波yr2
#include <stdio.h>
#include <conio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <dirent.h>
#include <pthread.h>
#include <sys/socket.h>
#include <malloc.h>
#include <math.h>
#include <thread>
#include <iostream>
#include <sys/stat.h>
#include <errno.h>
#include <netdb.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <iostream>
#include <locale>
#include <string>
#include <codecvt>

typedef char PACKAGENAME;
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

long int getXa(int pid, const char *module_name)
{
	FILE *fp;
	long addr = 0;
	char *pch;
	char filename[64];
	char line[1024];
	snprintf(filename, sizeof(filename), "/proc/%d/maps", pid);
	fp = fopen(filename, "r");
	if (fp != NULL)
	{
		while (fgets(line, sizeof(line), fp))
		{
			if (strstr(line, module_name))
			{
				pch = strtok(line, "-");
				addr = strtoul(pch, NULL, 16);
				if (addr == 0x8000)
					addr = 0;
				break;
			}
		}
		fclose(fp);
	}
	return addr;
}

long getbss(int pid, const char *module_name)
{
	FILE *fp;
	long addr = 0;
	char *pch;
	char filename[64];
	char line[1024];
	snprintf(filename, sizeof(filename), "/proc/%d/maps", pid);
	fp = fopen(filename, "r");
	bool is = false;
	if (fp != NULL)
	{
		while (fgets(line, sizeof(line), fp))
		{
			if (strstr(line, module_name ))
			{
				is = true;
			}
			if (is)
			{
				if (strstr(line, "[anon:.bss]"))
				{
					sscanf(line, "%X", &addr);
					break;
				}
			}
		}
		fclose(fp);
	}
	return addr;
}

long getCd(int pid, const char *module_name)
{
	FILE *fp;
	long addr = 0;
	char *pch;
	char filename[64];
	char line[1024];
	snprintf(filename, sizeof(filename), "/proc/%d/maps", pid);
	fp = fopen(filename, "r");
	char str[100];
	sprintf(str, "-%x", getbss(pid, module_name));
	if (fp != NULL)
	{
		while (fgets(line, sizeof(line), fp))
		{
			if (strstr(line, str ))
			{
				sscanf(line, "%X", &addr);
				break;
			}
		}
		fclose(fp);
	}
	return addr;
}



long int handle;
float gainF(long int addr)
{
	float var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}

int gainD(long int addr)
{
	int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
//32位指针
long int lsp32(long int addr)
{
	long int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}

//64位指针
long int lsp64(long int addr)
{
	long int var = 0;
	pread64(handle, &var, 8, addr);
	return var;
}
//D类型
int WriteAddress_DWORD(long int addr,int value) {
	pwrite64(handle, &value, 4, addr);
	return 0;
}
//F类型
float WriteAddress_FLOAT(long int addr, float value) {
	pwrite64(handle, &value, 4, addr);
	return 0;
}
//B类型
int8_t WriteAddress_BYTE(long int addr,int value) {
	pwrite64(handle, &value, 1, addr);
	return 0;
}
//W类型
int16_t WriteAddress_WORD(long int addr,int value) {
	pwrite64(handle, &value, 2, addr);
	return 0;
}
//Q类型
int64_t WriteAddress_QWORD(long int addr,int value) {
	pwrite64(handle, &value, 32, addr);
	return 0;
}
//E类型
double WriteAddress_DOUBLE(long int addr, double value) {
	pwrite64(handle, &value, 64, addr);
	return 0;
}

int main(int argc, char **argv)
{

	// 读取游戏进程
	int ipid = getPID("com.tencent.ig");
    char lj[64];
	sprintf(lj, "/proc/%d/mem", ipid);
	handle = open(lj, O_RDWR);
	if (handle == 0)
	{
		puts("获取mem失败!");
		exit(1);
	}
	// 读取基址
	puts("\n开始基址搜索");
	char mname[] = "libUE4.so";	// 基址入口模块
	//Xa用getXa,Cb用getbss,Cd用getCd
	long int fool = getXa(ipid, mname);
    //64位游戏把lsp32换成lsp64即可
	long int a1 = lsp64(lsp64(lsp64(lsp64(fool + 0x50220) + 0xF8) + 0x208) + 0x3E0)+0xDC;
	printf("基址搜索完成\n");
    printf("\n找到基址=%lx\n", a1);
	WriteAddress_DWORD(a1, 8.47963525e-21);
	//修改支持所有类型
	puts("\n修改成功\n");
	}
	
