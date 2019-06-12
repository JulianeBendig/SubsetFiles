#author:        Juliane Bendig
#organization:  TerraLuma (University of Tasmania)
#detail:        Select every i-th file in a folder and copy to new destination.
#created:       Wed 12th June 2019
#modified:      12th June 2019
#---------------------------------------------------------------------------------
rm(list=ls())

# Variables------------------------------------------------------------------------
in_dir  = "C:/Users/Bendig/Desktop/Testosteron"
out_dir = "C:/Users/Bendig/Desktop/Testosteron/sub"
file_type = 'JPG'
i = 2 #sample every i-th file
j = 1 #start with file no. j
#-----------------------------------------------------------------------------------

#list files
myfiles = list.files(in_dir, pattern = file_type)

#subset
n = length(myfiles)
myseq = myfiles[seq(j, n, i)] 

#copy
file.copy(myseq,out_dir)

print(paste("Files copied succesfully!"))  