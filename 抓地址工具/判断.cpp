#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <dirent.h>
#include <inttypes.h>

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
			snprintf(filename, sizeof(filename), "/proc/%d/cmdline", id);
			fp = fopen(filename, "r");
			if (fp)
			{
				fgets(cmdline, sizeof(cmdline), fp);
				fclose(fp);
				if (strcmp(packageName, cmdline) == 0)
				{
					closedir(dir);
					return id;
				}
			}
		}
	}
	closedir(dir);
	return -1;
}

long int get_module_base(int pid, const char *module_name)
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
			if (strstr(line, module_name))
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
			if (strstr(line, str))
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

float getFloat(long int addr)
{
	float var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}

int getDword(long int addr)
{
	int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}

// 32位指针
long int lsp32(long int addr)
{
	long int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}

// 64位指针
long int lsp64(long int addr)
{
	long int var = 0;
	pread64(handle, &var, 8, addr);
	return var;
}

// D类型
int WriteAddress_DWORD(long int addr, int value)
{
	pwrite64(handle, &value, 4, addr);
	return 0;
}

// F类型
float WriteAddress_FLOAT(long int addr, float value)
{
	pwrite64(handle, &value, 4, addr);
	return 0;
}

// B类型
int8_t WriteAddress_BYTE(long int addr, int value)
{
	pwrite64(handle, &value, 1, addr);
	return 0;
}

// W类型
int16_t WriteAddress_WORD(long int addr, int value)
{
	pwrite64(handle, &value, 2, addr);
	return 0;
}

// Q类型
int64_t WriteAddress_QWORD(long int addr, int value)
{
	pwrite64(handle, &value, 32, addr);
	return 0;
}

// E类型
double WriteAddress_DOUBLE(long int addr, double value)
{
	pwrite64(handle, &value, 64, addr);
	return 0;
}

int main()
{
	int ipid = getPID("com.tencent.ig");
	char lj[64];
	sprintf(lj, "/proc/%d/mem", ipid);
	handle = open(lj, O_RDWR);
	if (handle == -1)
	{
		puts("获取mem失败!");
		exit(1);
	}
	// 随时更新
	char mname[] = "libUE4.so";
	long int a6 = get_module_base(ipid, "libUE4.so");
	long int fool = getbss(ipid, mname);

	// 0x30+0x518+0x30

	long int pd = lsp64(lsp64(lsp64(lsp64(lsp64(a6 + 偏移) + 偏移) + 偏移) + 偏移) + 偏移) + 偏移;
	for (;;)
	{
		int tt = getDword(pd);
		if (tt < 0)//打于0开启
		{
           
		}
		if (tt == 0)//等于0关闭
		{

		}
	}
}
