  set.seed(1000)
  testSize <- 0.05
  smp_size <- floor((1-testSize) * nrow(dataSet))
  sample <- sample(seq_len(nrow(dataSet)), size = smp_size)
  
  train <- dataSet[sample, ] %>% mutate(train = 1)
  test <- dataSet[-sample, ] %>% mutate(train = 0)
  
  trainTest <- rbind(train,test)
