runMe <- function() {

# buyer beware :)
# written in a Mac OSX environment
# to use this code snippet in Windows, this script needs a rewrite
# presumes project runs from a GitHub directory immediately below user home dir
# presumes environment already has tm.plugin.mail package downloaded from CRAN
# presumes environment already has tm package downloaded from CRAN
# presumes zip files are manually unpacked, with .eml files saved to 'emails'
# the way this package and example works is definitely backwards from other 
          # import packages I've used


          # load package needed to read .eml files

          library("tm.plugin.mail")

          # load package needed by function VCorpus

          library("tm") 

          # sets working directory to project sub-dir where .eml files saved

          setwd("~/GitHub/import_eml/emails")

          # this long comment refers to line 46 to 47 as a narrative
          # create object called 'emlData' from tm package 'VCorpus' function
          # when this function runs and completes, the environment object 
                    # 'emlData' will contain the contents from your imported 
                    # .eml files
          # I'm guessing the 'tm.plugin.mail' is an extension of the tm package,
                    # as such, the intent of the plugin writers was to expand
                    # the data import capabilities of the VCorpus function.
          # the 'emlData' environment object is a function of 'VCorpus' function
          # 'VCorpus' function's first argument is 'DirSource' 
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
          # fix and remove this bad practice shortcut so you complete this 
          # project.

          # the next line prints emlData summary information to console to
          # demonstrate the code actually did something.
          
          inspect(emlData)
          
          # the next line returns working directory back to default
          
          setwd("~/GitHub/import_eml/")
          
          # good luck~

}