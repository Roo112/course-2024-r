prep_inputs <- function(x) {
library(tools)

setwd("/home/chen/nlpcourse/The-Role-of-Corporate-Culture-in-Bad-Times/data")



csv_files <- list.files(
    path = paste(getwd(), "/pdfs/parsed", sep = ""),
    pattern = "*.csv", recursive = TRUE, full.name = TRUE,
    include.dirs = TRUE
)



all_QA <- list()
all_Presentation <- list()
all_transcriots <- list()


for (single_call_csv in csv_files) {

call_csv_dataframe <- read.csv(single_call_csv)
call_csv_dataframe$"call_title_data" <-
 tools::file_path_sans_ext(single_call_csv)
}





return(csv_files)
 }


  prep_inputs()