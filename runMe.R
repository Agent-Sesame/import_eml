runMe <- function() {

# buyer beware :)
# written in a Mac OSX environment
# presumes project runs from a GitHub directory immediately below user dir      
# presumes environment already has tm.plugin.mail package downloaded from CRAN
# tried to explain how this code works with comments throughout code.
# the way this package and example works is definitely backwards from other 
          # import packages I've used


          # load package needed to read .eml files

          library("tm.plugin.mail")

          # load package needed by function VCorpus

          library("tm") 

          # sets working directory to project sub-dir where .eml files saved

          setwd("~/GitHub/import_eml/emails")

          # this long comment refers to line 38 to 39
          # create object called 'emlData' from tm package 'VCorpus' function
          # emlData will contain the contents from your imported .eml files
          # the 'DirSource' function is an argument to the 'VCorpus' function
          # 'DirSource' returns working directory information for 'VCorpus'
          # 'VCorpus' next argument is 'readerControl' which is equal to 'list'
          # 'list' is a function to construct a list with 'reader' as argument
          # 'reader' designates package tm.plugin.mail function 'readMail'
                    # as the function to use for importing the eml files.
          # so once finally readMail starts to import the eml files, the files
                    # are put into a list (one email file inside a single list)
                    # all inside emlData as a list of lists of email metadata.
          # lots of words to explain how the next two lines of code works
          
          emlData <<- VCorpus(DirSource(),
                              readerControl = list(reader = readMail))

          # the double < < operator isn't best practice but after the code runs, 
          # this operator will leave you an object in the project environment
          # to visually inspect. I like this while debugging a project. you can
          # fix this up as you improve and complete this project.

          # the next line prints emlData summary information to console to
          # demonstrate the code worked.
          
          inspect(emlData)
          
          # the next line returns working directory back to default
          
          setwd("~/GitHub/import_eml/")
          
          # good luck~

}