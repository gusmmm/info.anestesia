# a testar tirar automaticamente o google sheet Resultados
# usa o pacote googlesheets

# primeiro partilhar o google sheet e copiar o shareable link
# iniciar com gs_ls()

link <- "https://docs.google.com/spreadsheets/d/1BW1px39oGAuH9hJBeYBJxOwwmlnIKpV-vkueIBkZRk0/edit?usp=sharing"
gap <- gs_url(link)
# grava o objecto chamado resultados
gap%>% gs_read(ws=1) -> resultados
