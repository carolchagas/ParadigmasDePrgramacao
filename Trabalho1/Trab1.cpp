#include<stdlib.h>
#include<stdio.h>
#include<string.h>

int comparador(const void *x, const void *y)
{
	return strcmp(*(char* const*)x, *(char* const*)y);
}

int main()
{
	FILE *fileR, *fileW;
	int cont;
	char priLin, nome[20], **vet;
	cont = 0;
	
	fileR = fopen("nomes.txt", "r");
    fileW = fopen("listaHTML.html", "a");
	
	while(! feof(fileR)){
		
		fscanf(fileR, "%c", &priLin);
		
		if(priLin == 'R'){
			cont++;	
		}		
		
	}
	fclose(fileR);
	vet  = (char**) malloc(cont*sizeof(char*));
	for(int x = 0; x <= cont; x++)
    	vet[x] = (char*)malloc(20*sizeof(char));
    
	cont = 0;
	
	fileR = fopen("nomes.txt", "r");
	while(! feof(fileR)){
		
		fscanf(fileR, "%c", &priLin);
		
		if(priLin == 'R'){
			fscanf(fileR, "%s \n", &nome);
			vet[cont][0] = 'R';
			for(int x = 1; x < 20; x++)
				vet[cont][x] = nome[x-1];
			
			cont++; 	
		}
		
	}	
	
	qsort(&vet[0], sizeof(vet), sizeof(char*), comparador);
	
	
	fprintf(fileW, "<html> \n<head> \n<title> Lista de vencedores </title> \n</head> \n<body> <center> VENCEDORES: </center> \n<ul> \n");
	for(int x = 0; x < (cont-1); x++)
	{
		fprintf(fileW, "<li> %s </li> \n",vet[x]);
	}
	fprintf(fileW, "</ul> \n</body> \n</html> \n");
	fclose(fileW);
	
	system("pause");
	return 0;
}
