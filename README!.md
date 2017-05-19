## README

Proyecto Final: Estudio molecular de argásidos asociados con murciélagos de México.

En este proyecto se utilizan secuencias de dos genes mitocondriales de argásidos (COI y 16S) parásitos de murciélagos de México. Con el objetivo de determinar que tan distintas son molecularmente dichas secuecnias entre ellas, se realizarán análisis de distancias genéticas y posteriormente la representación gráfica de dichos análisis.

Para lo que vamos a dividir este repositorio en 4 carpetas principales, las cuales contienen la información necesaria para poder reproducir dicho análisis fácilmente:

+ **Datos**: Contiene los archivos para correr los análisis, incluye archivos .txt, .fasta, .tree

+ **bin**: Contiene los scripts utilizados para correr los análsis.

    1.Descarga de secuencias de GenBank:
    script_secGB.R

    2.Alineamiento de secuencias COI:
    script_ACOI.R

    3.Anlineamiento de secuencias 16S:
    script_A16S.R
    
    4.Distancias genéticas COI:
    script_distCOI.R
    
    5.Distancias genéticas 16S:
    script_dist16S.R


+ **Output**: En esta carpeta se encuentran los archivos arrojados por cada script.

    -Secuencias GenBank
    
    -Aliamiento COI

    -Alineamiento 16S

    -Distancias genéticas COI
    
    -Distancias genéticas 16S

+ **Gráficos**: Contiene los gráficos o árboles realizados con R
