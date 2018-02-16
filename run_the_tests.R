# This function runs the tests on Query.miner and Universe.miner that are specified by the parameters: test.type, general.select, subset.by, subset.select, enrich, pval, and adjpval
#
#

run_the_tests <- function(Query.miner, Universe.miner, test.type, general.select, subset.by, subset.select, enrich, pval, adjpval){
  if(test.type=="Fisher"){
    #intact cat
    if(general.select[1]==T){
      if (enrich==T){
        intact_cat_result <- intact.fisher.enrich(Query.miner$intact$Category, Universe.miner$intact$Category,pval=pval,adjpval=adjpval)
      }else{
        intact_cat_result <- intact.fisher(Query.miner$intact$Category, Universe.miner$intact$Category)
      }}
    #intact main
    if(general.select[2]==T){
      if (enrich==T){
        intact_main_result <- intact.fisher.enrich(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`,pval=pval,adjpval=adjpval)
      }else{
        intact_main_result <- intact.fisher(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`)
      }}
    #intact sub
    if(general.select[3]==T){
      if (enrich==T){
        intact_sub_result <- intact.fisher.enrich(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`,pval=pval,adjpval=adjpval)
      }else{
        intact_sub_result <- intact.fisher(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`)
      }}
    #chain
    if(general.select[4]==T){
      if (enrich==T){
        chain_result <- chain.fisher.enrich(Query.miner$chain, Universe.miner$chain,pval=pval,adjpval=adjpval)
      }else{
        chain_result <- chain.fisher(Query.miner$chain, Universe.miner$chain)
      }}
    #allchains
    if(general.select[5]==T){
      if (enrich==T){
        allchains_result <- allchains.fisher.enrich(Query.miner$allchains, Universe.miner$allchains,pval=pval,adjpval=adjpval)
      }else{
        allchains_result <- allchains.fisher(Query.miner$allchains, Universe.miner$allchains)
      }}
    #sub total carbon
    if(subset.select[1]==T){
      if (subset.by=="category"){
        sub_total_carbon_result<- total.carbon.cat(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
      if (subset.by=="mainclass"){
        sub_total_carbon_result<- total.carbon.main(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
      if (subset.by=="subclass"){
        sub_total_carbon_result<- total.carbon.sub(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
    }
    #sub total DB
    if(subset.select[2]==T){
      if (subset.by=="category"){
        sub_total_DB_result<- total.DB.cat(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
      if (subset.by=="mainclass"){
        sub_total_DB_result<- total.DB.main(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
      if (subset.by=="subclass"){
        sub_total_DB_result<- total.DB.sub(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
    }
    #sub allchains
    if(subset.select[2]==T){
      if (subset.by=="category"){
        sub_allchains_result<- allchains.cat(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
      if (subset.by=="mainclass"){
        sub_allchains_result<- allchains.main(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
      if (subset.by=="subclass"){
        sub_allchains_result<- allchains.sub(Query.miner$intact,Universe.miner$intact, enrich=enrich,p=pval,adjp=adjpval)
      }
    }
  }else{
    #Binom
    if(test.type=="Binom"){
      #intact cat
      if(general.select[1]==T){
        if (enrich==T){
          intact_cat_result <- intact.binom.enrich(Query.miner$intact$Category, Universe.miner$intact$Category,pval=pval,adjpval=adjpval)
        }else{
          intact_cat_result <- intact.binom(Query.miner$intact$Category, Universe.miner$intact$Category)
        }}
      #intact main
      if(general.select[2]==T){
        if (enrich==T){
          intact_main_result <- intact.binom.enrich(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`,pval=pval,adjpval=adjpval)
        }else{
          intact_main_result <- intact.binom(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`)
        }}
      #intact sub
      if(general.select[3]==T){
        if (enrich==T){
          intact_sub_result <- intact.binom.enrich(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`,pval=pval,adjpval=adjpval)
        }else{
          intact_sub_result <- intact.binom(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`)
        }}
      #chain
      if(general.select[4]==T){
        if (enrich==T){
          chain_result <- chain.binom.enrich(Query.miner$chain, Universe.miner$chain,pval=pval,adjpval=adjpval)
        }else{
          chain_result <- chain.binom(Query.miner$chain, Universe.miner$chain)
        }}
      #allchains
      if(general.select[5]==T){
        if (enrich==T){
          allchains_result <- allchains.binom.enrich(Query.miner$allchains, Universe.miner$allchains,pval=pval,adjpval=adjpval)
        }else{
          allchains_result <- allchains.binom(Query.miner$allchains, Universe.miner$allchains)
        }}
      #sub total carbon
      if(subset.select[1]==T){
        if (subset.by=="category"){
          sub_total_carbon_result<- total.carbon.cat(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
        if (subset.by=="mainclass"){
          sub_total_carbon_result<- total.carbon.main(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
        if (subset.by=="subclass"){
          sub_total_carbon_result<- total.carbon.sub(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
      }
      #sub total DB
      if(subset.select[2]==T){
        if (subset.by=="category"){
          sub_total_DB_result<- total.DB.cat(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
        if (subset.by=="mainclass"){
          sub_total_DB_result<- total.DB.main(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
        if (subset.by=="subclass"){
          sub_total_DB_result<- total.DB.sub(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
      }
      #sub allchains
      if(subset.select[2]==T){
        if (subset.by=="category"){
          sub_allchains_result<- allchains.cat(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
        if (subset.by=="mainclass"){
          sub_allchains_result<- allchains.main(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
        if (subset.by=="subclass"){
          sub_allchains_result<- allchains.sub(Query.miner$intact,Universe.miner$intact, test= "Binom",enrich=enrich,p=pval,adjp=adjpval)
        }
      }
    }else{
      #Hyper
      if(test.type=="Hyper"){
        #intact cat
        if(general.select[1]==T){
          if (enrich==T){
            intact_cat_result <- intact.hyper.enrich(Query.miner$intact$Category, Universe.miner$intact$Category,pval=pval,adjpval=adjpval)
          }else{
            intact_cat_result <- intact.hyper(Query.miner$intact$Category, Universe.miner$intact$Category)
          }}
        #intact main
        if(general.select[2]==T){
          if (enrich==T){
            intact_main_result <- intact.hyper.enrich(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`,pval=pval,adjpval=adjpval)
          }else{
            intact_main_result <- intact.hyper(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`)
          }}
        #intact sub
        if(general.select[3]==T){
          if (enrich==T){
            intact_sub_result <- intact.hyper.enrich(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`,pval=pval,adjpval=adjpval)
          }else{
            intact_sub_result <- intact.hyper(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`)
          }}
        #chain
        if(general.select[4]==T){
          if (enrich==T){
            chain_result <- chain.hyper.enrich(Query.miner$chain, Universe.miner$chain,pval=pval,adjpval=adjpval)
          }else{
            chain_result <- chain.hyper(Query.miner$chain, Universe.miner$chain)
          }}
        #allchains
        if(general.select[5]==T){
          if (enrich==T){
            allchains_result <- allchains.hyper.enrich(Query.miner$allchains, Universe.miner$allchains,pval=pval,adjpval=adjpval)
          }else{
            allchains_result <- allchains.hyper(Query.miner$allchains, Universe.miner$allchains)
          }}
        #sub total carbon
        if(subset.select[1]==T){
          if (subset.by=="category"){
            sub_total_carbon_result<- total.carbon.cat(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
          if (subset.by=="mainclass"){
            sub_total_carbon_result<- total.carbon.main(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
          if (subset.by=="subclass"){
            sub_total_carbon_result<- total.carbon.sub(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
        }
        #sub total DB
        if(subset.select[2]==T){
          if (subset.by=="category"){
            sub_total_DB_result<- total.DB.cat(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
          if (subset.by=="mainclass"){
            sub_total_DB_result<- total.DB.main(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
          if (subset.by=="subclass"){
            sub_total_DB_result<- total.DB.sub(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
        }
        #sub allchains
        if(subset.select[2]==T){
          if (subset.by=="category"){
            sub_allchains_result<- allchains.cat(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
          if (subset.by=="mainclass"){
            sub_allchains_result<- allchains.main(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
          if (subset.by=="subclass"){
            sub_allchains_result<- allchains.sub(Query.miner$intact,Universe.miner$intact, test= "Hyper",enrich=enrich,p=pval,adjp=adjpval)
          }
        }
      }else{
        #EASE
        if(test.type=="EASE"){
          #intact cat
          if(general.select[1]==T){
            if (enrich==T){
              intact_cat_result <- intact.EASE.enrich(Query.miner$intact$Category, Universe.miner$intact$Category,pval=pval,adjpval=adjpval)
            }else{
              intact_cat_result <- intact.EASE(Query.miner$intact$Category, Universe.miner$intact$Category)
            }}
          #intact main
          if(general.select[2]==T){
            if (enrich==T){
              intact_main_result <- intact.EASE.enrich(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`,pval=pval,adjpval=adjpval)
            }else{
              intact_main_result <- intact.EASE(Query.miner$intact$`Main class`, Universe.miner$intact$`Main class`)
            }}
          #intact sub
          if(general.select[3]==T){
            if (enrich==T){
              intact_sub_result <- intact.EASE.enrich(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`,pval=pval,adjpval=adjpval)
            }else{
              intact_sub_result <- intact.EASE(Query.miner$intact$`Sub class`, Universe.miner$intact$`Sub class`)
            }}
          #chain
          if(general.select[4]==T){
            if (enrich==T){
              chain_result <- chain.EASE.enrich(Query.miner$chain, Universe.miner$chain,pval=pval,adjpval=adjpval)
            }else{
              chain_result <- chain.EASE(Query.miner$chain, Universe.miner$chain)
            }}
          #allchains
          if(general.select[5]==T){
            if (enrich==T){
              allchains_result <- allchains.EASE.enrich(Query.miner$allchains, Universe.miner$allchains,pval=pval,adjpval=adjpval)
            }else{
              allchains_result <- allchains.EASE(Query.miner$allchains, Universe.miner$allchains)
            }}
          #sub total carbon
          if(subset.select[1]==T){
            if (subset.by=="category"){
              sub_total_carbon_result<- total.carbon.cat(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
            if (subset.by=="mainclass"){
              sub_total_carbon_result<- total.carbon.main(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
            if (subset.by=="subclass"){
              sub_total_carbon_result<- total.carbon.sub(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
          }
          #sub total DB
          if(subset.select[2]==T){
            if (subset.by=="category"){
              sub_total_DB_result<- total.DB.cat(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
            if (subset.by=="mainclass"){
              sub_total_DB_result<- total.DB.main(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
            if (subset.by=="subclass"){
              sub_total_DB_result<- total.DB.sub(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
          }
          #sub allchains
          if(subset.select[2]==T){
            if (subset.by=="category"){
              sub_allchains_result<- allchains.cat(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
            if (subset.by=="mainclass"){
              sub_allchains_result<- allchains.main(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
            if (subset.by=="subclass"){
              sub_allchains_result<- allchains.sub(Query.miner$intact,Universe.miner$intact, test= "EASE",enrich=enrich,p=pval,adjp=adjpval)
            }
          }
        }
      }
    }
  }
  
  
  
  
  # organize the results #
  
  title.enrich<-NA
  
  #create a global output object (for a global download of the results)
  global.output<-data.frame(matrix(nrow=0,ncol=9))
  colnames(global.output)<-c("Test.performed","Classifier","Count.query","Count.universe","%.query","%.universe","Pvalue","BHadjustPvalue","fold.change")
  
  options(warn=-1)
  if(intact_cat_result!=F){
    title.enrich<- paste("Category(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    intact_cat_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich,intact_cat_result))
  }
  
  if(intact_main_result!=F){
    title.enrich<- paste("Main class(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    intact_main_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich,intact_main_result))
  }
  
  if(intact_sub_result!=F){
    title.enrich<- paste("Sub class(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    intact_sub_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich,intact_sub_result))
  }
  
  if(chain_result!=F){
    title.enrich<- paste("Chain(s) characteristics(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    chain_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich,chain_result))
  }
  
  if(allchains_result!=F){
    title.enrich<- paste("Specific chain(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    allchains_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich,allchains_result))
  }
  
  if(sub_total_carbon_result!=F){
    title.enrich<- paste("Total chain carbon by ",subset.by,"(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    sub_total_carbon_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich, sub_total_carbon_result))
  }
  
  if(sub_total_DB_result!=F){
    title.enrich<- paste("Total number of DB by ",subset.by,"(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    sub_total_DB_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich, sub_total_DB_result))
  }
  
  if(sub_allchains_result!=F){
    title.enrich<- paste("Specific chains by ",subset.by,"(",test.type,")",sep="")
    #display title
    title.enrich
    #display this on the right panel
    sub_allchains_result
    global.output<-rbind(global.output,cbind(Test.performed=title.enrich, sub_allchains_result))
  }
  
  # return the global output #
  return(global.output)
  
}
