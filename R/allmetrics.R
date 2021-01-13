#' @title allmetrics

#' @description Calculates 31 different validation metrics from observed
#' values and predicted values. For the calculation of some metrics also the 
#' number of model parameters are used.

#' @inherit mae return author 

#' @inheritParams aic

#' @return A data.frame with all validation metrics for which functions are defined in 
#' this package.

#' @details See respective functions. 

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' allmetrics(o=obs, p=pred, k=2)

#' @export
allmetrics<-function(o, p, k){
  l<-list(
    ac=ac(o, p), 
    adjr2=adjr2(o, p, k), 
    aic=aic(o, p, k), 
    e=e(o, p), 
    iqr=iqr(o),        
    lc=lc(o, p), 
    lccc=lccc(o, p), 
    mad=mad(o, p), 
    mae=mae(o, p), 
    mape=mape(o, p), 
    mare=mare(o, p),       
    mde=mde(o, p), 
    mdse=mdse(o, p), 
    me=me(o, p), 
    msdr=msdr(o, p), 
    mse=mse(o, p), 
    nmse=nmse(o, p), 
    nrmse=nrmse(o, p), 
    nu=nu(o, p), 
    precision = precision(o, p), 
    r=r(o, p), 
   r2=r2(o, p), 
   rmdse=rmdse(o, p), 
   rmse=rmse(o, p), 
   rpd=rpd(o, p), 
   rpiq=rpiq(o, p), 
   skew=skew(o, p), 
   smape=smape(o, p),      
   sse=sse(o, p), 
   sst=sst(o)
 )
}

