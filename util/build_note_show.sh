# ONLY EDIT WITH NOTEPAD++ AND REMOVE ALL LINE RETURNS (\r)
#
# Build Notes Show
#

# Show Build Notes
printf "${BG_BLUE} Build Notes ${NC}\n"

# Display all docs
for filename in ${ROOT}/attoya/scaffold/build/*.md; do
  printf "\n${GREEN}$filename${NC}${BG_GRAY}\n"
  cat $filename
  printf "${NC}\n"
done

printf "\n"
