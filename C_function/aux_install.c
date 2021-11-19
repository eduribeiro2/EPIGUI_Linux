#include <stdio.h>
#include <stdlib.h>


void main(int argc, char *argv[])
{
    int i;
    char arq1[300];
    strcpy(arq1, argv[1]);

    FILE *saida = fopen("../EPIGUI.desktop","w");
    fprintf(saida,"[Desktop Entry]\n");
    fprintf(saida,"Name=EPIGUI\n");
    fprintf(saida,"Exec=gnome-terminal --command=\"bash -c \'cd ");
    for(i=0;i<strlen(arq1);i++)
    {
        if(arq1[i]==' ')
        {
            fprintf(saida,"\\ ");
        }
        else
        {
            fprintf(saida,"%c",arq1[i]);
        }
    }
    fprintf(saida,"; ./EPIGUI; $SHELL\'\"\n");
    fprintf(saida,"Comment=TESTE IBM\n");
    fprintf(saida,"Terminal=false\n");
    fprintf(saida,"Icon=cinnamon-panel-launcher\n");
    fprintf(saida,"Type=Application\n");
    fclose(saida);







}