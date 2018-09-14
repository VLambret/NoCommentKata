#include <stdio.h>

#define MAX_LINE_SIZE 4096

int print_file(FILE *file) {
	char line[MAX_LINE_SIZE];

	while(fgets(line, MAX_LINE_SIZE, file)) {
		printf("%s", line);
	}

	return 0;
}

int main(int argc, char **argv) {
	return print_file(stdin);
}
