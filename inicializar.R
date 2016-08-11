### ficheiro com as intrucçoes para iniciar o projecto ###


### packages adicionais ###

library(stringr)
library(lubridate)
library(readxl)
library(dplyr)
library(googlesheets)
library(ProjectTemplate)

# usa o projectTemplante para gerir o projecto
create.project("info.anestesia")

### directorios do projecto ###

# directorio principal -dp
dp <- getwd()
# directorio dos dados originais - dd
dd <- paste0(dp,"/dados/")
# directorio de output - do
do <- paste0(dp,"/output/")

### ficheiros do projecto ###

# ficheiro com os dados originais - fd
fd <- paste0(dd,list.files(dd))
fd <- read_excel(fd)
source(paste0(dp,"/codigo/prepara_fd.R"))

# grava o objecto fd no directorio dados - fd.Rdata
save(fd,file = paste0(do,"fd.Rdata"))
