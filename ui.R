shinyUI(pageWithSidebar(
  headerPanel("Simple Calculator for Scalars and Vectors"),
  sidebarPanel(
      tags$head(
          tags$style("body {color: blue; }")),
      h3('Please enter two scalars:'),
    numericInput('id1', 'scalar a', 0),
    numericInput('id2', 'scalar b', 0),
    h2('----------------'),
    h3('Please enter two vectors:'),
    h4('(no brackets, leave space after comma)'),
    textInput('id3', 'vector c', "0, 0"),
    textInput('id4', 'vector d', "0, 0")
    #checkboxGroupInput("id2", "Checkbox",
    #                   c("Value 1" = "1",
    #                     "Value 2" = "2",
    #                     "Value 3" = "3")),
    #dateInput("date", "Date:")
  ),
  mainPanel(
    h3('Basic scalar operations'),
    h4('a + b'),
    verbatimTextOutput("oid1"),
    h4('a - b'),
    verbatimTextOutput("oid2"),
    h4('a * b'),
    verbatimTextOutput("oid3"),
    h4('a / b'),
    verbatimTextOutput("oid4"),
    h3('Basic vector operations'),
    h4('length of c'),
    verbatimTextOutput("oid6"),
    h4('length of d'),
    verbatimTextOutput("oid7"),
    h4('scalar product c.d = sum_i c_i d_i'),
    verbatimTextOutput("oid5")
    
  )
))