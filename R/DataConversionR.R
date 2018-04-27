#' @title DataConversionR
#'
#' @description Conversion of csv data to JSON format.
#'
#' @param input_file the path of a file to read the file from; Only one  file must be supplied
#'
#' @examples test1 <- as.character(sample(1:100,10))
#' @examples input_file <- tempfile(fileext = ".csv")
#' @examples writeLines(test1, input_file)
#' @examples csv2JSON(input_file = input_file)
#' 
#' @import rjson
#' 
#' @return NULL
#' 
#' @import utils
#'
#' @export csv2JSON
#' 
csv2JSON <- function(input_file){
  # eg: input_file<-("/home/uvionics/Desktop/data_conversion/data.csv")
  
  # library(rjson)  install.packages("rjson")
  
  # finds the  length of charecters in the source code path.
  # eg: > nchar(input_file)
  #     [1] 47
  l<-nchar(input_file)
  
  # Make a sub string of path of the 'input_file' from 1 to (length-3)
  # getting the source code path without the last 3 charecter.
  # get source path directory without the format of source file
  # eg: > substr(input_file,1, (l-3))
  #    [1]  "/home/uvionics/Desktop/data_conversion/data."
  output<- substr(input_file,1, (l-3))
  
  #--Reads a csv file
  csv_format<-read.csv(file=input_file,header=T,stringsAsFactors = F)
  
  #--Converts to JSON format
  JSON_format<-toJSON(csv_format)
  
  # JSON_out<-JSON_format
  
  #--write the Converted JSON file in the original source code directory itself.
  #  eg  : [1]  "/home/uvionics/Desktop/data_conversion/data.json
  write(JSON_format,paste(output,"json",sep = ''))
  
  # return(JSON_out)
}