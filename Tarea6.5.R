#Tarea 6.5

#loading packages
#once the packages are installed, loading packages
library(ape) #"ape" and "seqinr" can read DNA sequences from GenBank

#To get sequences of argasid ticks from GenBank and see information about them

#create a vector with the accession numbers
argasid_accession_numbers <- c("JQ951962", "EU090907", "KX668413", "KC769591", "L34323", "KC769598", "EU090906", "EU090905")

#read sequences and place them in an object
argasid_sequences<- read.GenBank(argasid_accession_numbers) 

#get a brief summary of what is in the object, including base composition
argasid_sequences

#get a list of the elements with length of the sequences
str(argasid_sequences) 

#get a list of attributes and contents of each sequence
attributes(argasid_sequences)

#get the accession numbers
names(argasid_sequences) 

#get the species names list
attr(argasid_sequences, "species") 

#To get these sequences in a fasta file named "secuenciasGB"
write.dna(argasid_sequences, "secuenciasGB", format = "fasta")
