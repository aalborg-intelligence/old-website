f <- list.files(pattern = "*.qmd", full.names = TRUE, recursive = TRUE, include.dirs = TRUE)
intro <- readLines(here::here("_tools/flyttet_url_skabelon.txt"))
for(i in 1:length(f)){
  writeLines(
    c(
      intro,
      "",
      paste0("### <https://aimat.dk", substr(f[i], 2, nchar(f[i])-3), "html>")
      ),
    f[i]
  )
}