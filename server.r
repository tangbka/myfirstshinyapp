library(shiny); library(ggplot2)
x <- seq(0, 2*pi, 0.01)

shinyServer(
    function(input, output) {
        output$graph1 <- renderPlot({
            f <- input$factor
            s <- input$shift
            y1 <- sin(f*x + s)
            qplot(x, y1, main = 'Graph of Sine Curve y = sin(Ax + B)', ylab='y')
        })
        output$graph2 <- renderPlot({
            f <- input$factor
            s <- input$shift
            y2 <- cos(f*x + s)
            qplot(x, y2, main = 'Graph of Cosine Curve y = cos(Ax + B)', ylab='y')
        })
        
    }
)