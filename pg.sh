HL='\e[0;33m' # Highlight
NC='\e[0m' # No Color


for file in *.playground; do 
  cd $file; 
  cp Contents.swift main.swift;

  printf "${HL}Compiling $file${NC}\n";
  [ -e Sources/*.swift ] && swiftc -v main.swift Sources/*.swift || swiftc -v main.swift;
 
  printf "${HL}Running $file${NC}\n";
  ./main;
  rm main;
  rm main.swift;
  cd ..; 
done;
