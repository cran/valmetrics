#' @title valplot

#' @description Plots predicted values versus observed values in a  
#' coordinate system with the same range of both axes.

#' @inherit mae return author

#' @inheritParams mae

#' @param main A character value. The main title of the plot.
#' 
#' @param sub A character value. The subtitle of the plot.
#' 
#' @param xlab A character value. The x axis label.
#' 
#' @param ylab A character value. The y axis label.

#' @return A scatter plot of observed and predicted values.

#' @details Circles represent the data, dashed line represents observed = predicted 
#' and solid line represents an 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 5, 4, 5, 6, 8, 11, 10)
#' t1='Measured variable (unit)'
#' evalue<-round(e(o=obs, p=pred),2)
#' maevalue<-round(mae(o=obs, p=pred),1)
#' t2=paste('E = ', evalue, '; MAE = ', maevalue, ' units')
#' valplot(o=obs, p=pred, main=t1, sub=t2)

#' @export
valplot<-function(o, p, 
                  main=NA, sub=NA,
                  xlab='Observed value', ylab='Predicted value'
                  ){
  oldpar <- graphics::par(no.readonly = TRUE)    
  on.exit(graphics::par(oldpar))            
  graphics::par(pty="s")
  plot(o,p,
      xlab=xlab, ylab=ylab,
      xlim=range(pretty(c(o,p))), ylim=range(pretty(c(o,p))),
      xaxt="n", yaxt="n",
      pch=16,
      cex.lab=1,
      )
  graphics::abline(stats::lm(p ~ o), lty = "solid")
  graphics::abline(a=0, b=1, lty = "dashed")
  if(!is.na(main)&is.na(sub)) graphics::mtext(side=3, line=0.6, adj=0, cex=1, main)
  if(!is.na(main)&!is.na(sub)) graphics::mtext(side=3, line=2, adj=0, cex=1, main)
  if(!is.na(sub)) graphics::mtext(side=3, line=0.6, adj=0, cex=0.75, sub)
  graphics::axis(1,at=pretty(c(o,p)),cex.axis=0.75, font=1, tcl=0.3)
  graphics::axis(2,at=pretty(c(o,p)),cex.axis=0.75, font=1, tcl=0.3)
}

