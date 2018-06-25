gam.output <- mgcv::gam(
          y ~ s(smoothingVariable, by = factor(byFactor),bs="cs",k=10)  + intDecay +
            otherVariables +
            factor(factorVariable)
          ,data = dataSetTrain
          ,weights = as.numeric(dataWeights)
          ,family = poisson
          ,drop.intercept=T
          , method = "REML", select = TRUE
        )

mgcv::predict.gam(gam.output,testInput,type="response", se.fit=T)
