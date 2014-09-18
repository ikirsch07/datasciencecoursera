shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$id1}+{input$id2})
    output$oid2 <- renderPrint({input$id1}-{input$id2})
    output$oid3 <- renderPrint({input$id1}*{input$id2})
    output$oid4 <- renderPrint({input$id1}/{input$id2})
    output$oid5 <- renderPrint({tryCatch({
    (as.numeric(unlist(strsplit(input$id3, split=", "))) %*%
    as.numeric(unlist(strsplit(input$id4, split=", "))))[[1]]}, 
    error=function(cond) {
        print('*** scalar product cannot be computed: vectors are not of equal length or space after comma is missing')
        return(NA)}) })
    output$oid6 <- renderPrint({
        sqrt((as.numeric(unlist(strsplit(input$id3, split=", "))) %*%
             as.numeric(unlist(strsplit(input$id3, split=", "))))[[1]])})
    output$oid7 <- renderPrint({
        sqrt((as.numeric(unlist(strsplit(input$id4, split=", "))) %*%
                  as.numeric(unlist(strsplit(input$id4, split=", "))))[[1]])})
  }
)