
`%dopar%` <- foreach::`%dopar%` #use without loading the full package

(cores <- parallel::detectCores())
cl <- parallel::makeCluster(cores-1)
doParallel::registerDoParallel(cl)

results <- foreach::foreach(i=1:n, .combine = rbind, .export=c('exportedDataSet','exportedFucntion'), .packages = c("dplyr")) %dopar% {

    #Code the  loop   
    return(valuesToReturn)
}

parallel::stopCluster(cl)
foreach::registerDoSEQ()
