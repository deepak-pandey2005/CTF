#include <stdio.h>
void say_hello(char *name)
{
	printf("hello %s! \n",name);
}
int main()
{
	char my_name[1024];
	scanf("%1000s", &my_name);
	say_hello(my_name);
}
