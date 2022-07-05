#include <stdio.h>

int main()
{
    char in_name[80];
    FILE *in_file;
    char word[50];

    printf("Enter file name:\n");
    scanf("%s", in_name);

    in_file = fopen(in_name, "r");

    if (in_file == NULL)
        printf("Can't open %s for reading.\n", in_name);
    else
    {
        while (fscanf(in_file, "%s", word) != EOF)
        {
            printf("%s\n", word);
        }
        fclose(in_file);
    }
    return 0;
}