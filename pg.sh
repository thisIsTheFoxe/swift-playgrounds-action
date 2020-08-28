HL='\e[33m'		# Highlight
RED='\e[31m'		# Red
GREEN='\e[32m'		# Green
CHECK='\xE2\x9C\x94'	# Checkmark
NC='\e[0m'		# No Color

exitCode=0;

for file in *.playground; do 
  cd $file; 
  cp Contents.swift main.swift;

  printf "${HL}Compiling $file${NC}\n";
  if !([ -e Sources/*.swift ] && swiftc -v main.swift Sources/*.swift || swiftc -v main.swift);
  then
    printf "${RED}Failed to compile $file${NC}\n";
    exitCode=1;
    rm main.swift;
    cd ..;
    continue;
  fi;
  printf "${HL}Running $file${NC}\n";
  if !(./main);
  then
    printf "${RED}Failed to run $file${NC}\n";
    exitCode=1;
  else
    printf "${GREEN}${CHECK} $file${NC}\n";
  fi;
  rm main;
  rm main.swift;
  cd ..;
done;

exit $exitCode;
