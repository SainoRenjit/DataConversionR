# DataConversionR

Data conversion is the process of transforming data from one format to another format.

## Getting Started
Data conversion is the process of transforming data from one format to another.It involves extracting data from its original source, transforming the data into the desired format, and finally, loading the data into the source location.

### Dependencies
Install the packages from CRAN.
```
  install.packages("devtools")
  options(unzip="internal")
  install.packages("curl")
  install.packages("rjson")  
  ```
  
### Installation

After installing the dependacies, clone the repository and run the setup file using the following command.

```
install_github('SainoRenjit/Dataconversion')
```

Now the package is ready to be used in any python program.

### Example  :

csv to JSON

```
library(DataConversion)
test1 <- as.character(sample(1:100,10))
input_file <- tempfile(fileext = ".csv")
writeLines(test1, input_file)
csv2JSON(input_file = input_file)
```
