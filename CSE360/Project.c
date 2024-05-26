#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

int acc1 = 0;
char input[100];
char opcode[10];
int operand;
int x = 1;

void clearValue()
{
    operand = 0;
    for (size_t i = 0; i < sizeof(input); i++)
    {
        input[i] = '\0';
    }
    for (size_t i = 0; i < sizeof(opcode); i++)
    {
        opcode[i] = '\0';
    }
}

void getValues()
{
    // Taking input from user
    printf("\n\nEnter a string (e.g., ADD 500): ");
    fgets(input, sizeof(input), stdin);

    for (int i = 0; input[i]; i++)
    {
        input[i] = toupper(input[i]);
    }

    sscanf(input, "%s %d", opcode, &operand);
}

void displayInstruction(const char *opcode, const char *operand, const char *comment)
{
    printf("%-10s %-10s %s\n", opcode, operand, comment);
}

void displayDev(const char *name, const char *id)
{
    printf("%-25s %-15s \n", name, id);
}

void Accumulator()
{

    if (!strcmp(opcode, "ADD"))
    {
        acc1 = acc1 + operand;
        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "SUB"))
    {
        acc1 = acc1 - operand;
        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "MUL"))
    {

        acc1 = acc1 * operand;

        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "DIV"))
    {

        acc1 = acc1 / operand;

        if (operand == 0)
        {
            printf("Math error! Cannot divide by 0!\n");
        }
        else
        {
            printf("\nAccumulator = %d", acc1);
        }
    }
    else if (!strcmp(opcode, "AND"))
    {
        acc1 = acc1 & operand;
        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "NOT"))
    {
        acc1 = ~operand;
        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "OR"))
    {
        acc1 = acc1 | operand;
        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "LD"))
    {
        acc1 = operand;
        printf("\nAccumulator = %d", acc1);
    }
    else if (!strcmp(opcode, "ST"))
    {
        printf("\nAccumulator1 = %d", acc1);
        printf("\nstored in memory location: %p", &acc1);
    }
    else if (!strcmp(opcode, "END"))
    {
        printf("\nThe session has ended!\nThank you :)\n");
        printf("This software is developed by\n\n");
        displayDev("Name", "Student ID");
        printf("------------------------------------------\n");
        displayDev("Fardin Islam", "2021-2-60-041");
        displayDev("Jubayer Alam Likhon", "2021-2-60-071");
        displayDev("Umme Habiba Fariha", "2021-2-60-079");
        displayDev("Suraiya Nusrat Tanha", "2021-2-60-030");
        printf("\n\n\n");
        exit(0);
    }
    printf("\n");
}

int main()
{
    printf("\n\n----------Welcome to our program----------\n\n\n");

    printf("%-10s %-10s %s\n", "Opcode", "Operand", "Comment");
    printf("_________________________________________________________________\n");

    // Display instructions
    displayInstruction("ADD", "x", "Add memory location operand into acc.");
    displayInstruction("SUB", "x", "Subtract operand from Acc.");
    displayInstruction("MUL", "x", "Multiply operand with acc.");
    displayInstruction("DIV", "x", "Divide acc. by operand.");
    displayInstruction("AND", "x", "And operand with acc.");
    displayInstruction("NOT", "x", "Complement acc.");
    displayInstruction("OR", "x", "Or operand with acc.");
    displayInstruction("LD", "x", "Load memory location operand at acc.");
    displayInstruction("ST", "x", "Store acc. at memory location operand");
    displayInstruction("END", "NULL", "End the session");

    while (x)
    {
        clearValue();
        getValues();
        Accumulator();
    }
    return 0;
}
