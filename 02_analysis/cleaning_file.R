data = read_csv("mors_cleaned.csv")


data %>% 
  group_by(CAB) %>%
  mutate(ID = paste0(group_indices(),"C")) %>%
  group_by(Name) %>%
  mutate(ID2 = paste0(group_indices(),"N")) %>%
  group_by(Model) %>%
  mutate(ID3 = paste0(group_indices(),"M")) %>% 
  ungroup() %>%
  write_csv("mors_cleaned_ID.csv")

