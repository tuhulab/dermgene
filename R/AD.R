# AD genes -------------------------------
library(dplyr)

epidermal_differentiation_complex <- 
  readr::read_csv("data/epidermal_differentiation_complex.csv") %>% 
  mutate(gene_function = "epidermal_differentiation_complex")
epidermal_differentiation_complex %>% 
  readr::write_csv("data/epidermal_differentiation_complex.csv")
  
helen_emma_list <- data.frame(immu_func = "general_inflammation", gene = "MMP12") %>% 
  add_row(immu_func = "Th1", gene = c("IFNG", "CXCL9", "CXCL10", "STAT1")) %>% 
  add_row(immu_func = "Th2", gene = c("IL4R", "IL13", "IL31", "CCL17", "CCL18", "CCL22","CCL26", "OSM")) %>% 
  add_row(immu_func = "Th17", gene = c("IL17A", "IL20", "PI3", "IL36G","CCL20", "CXCL1")) %>% 
  add_row(immu_func = "Th17_Th22", gene = c("S100A7", "S100A8", "S100A9", "S100A12")) %>% 
  add_row(immu_func = "Th22", gene = c("IL22", "IL32")) %>% 
  add_row(immu_func = "Treg", gene = c("IL10", "FOXP3", "CTLA4")) %>% 
  add_row(immu_func = "negative_regulators", gene=c("IL34", "IL37", "LORICRIN"))
helen_emma_list %>% 
  readr::write_csv("data/mild_ad_biomarker.csv")
