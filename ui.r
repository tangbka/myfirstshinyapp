library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Understanding Trigonometry"),
    sidebarPanel(
        h3('Control Panel'),
        p('Toggle the sliders below to change the factors A and B.'),
        p('Watch how the graphs on the right changes.'),
        br(),
        sliderInput('factor', 'Value of A', value=1, min=0, max=3,step=0.5),
        sliderInput('shift', 'Value of B', value=0, min=0, max=round(2*pi,2),step=round(pi/3,2))
        ),
    mainPanel(
        tabsetPanel(
            tabPanel('Introduction',
                     h3('Introduction'),
                     p('1. This application is designed to simulate the plot',
                     span('y = sin(Ax + B)', style='color:red'), 
                     'as well as', 
                     span('y = cos(Ax + B)', style = 'color:red'),
                     'when at varying values of A and B. The purpose is to help users',
                     'better understand how to plot trigonometry plots.'),
                     br(),
                     p('2. To start, simple click on the tab',
                       strong('Graph'), 'above, toggle the values of',
                       strong('A'), 'and', strong('B'), 
                       'in the Control Panel on the left and watch how the graph changes.')
                     ),
            tabPanel('Graph', 
                     h3('Graphs of Sine and Cosine'),
                     plotOutput('graph1'),
                     plotOutput('graph2'))
            )
    )
))