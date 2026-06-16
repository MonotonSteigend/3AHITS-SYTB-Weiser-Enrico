
#!/bin/bash

for num in {0..42}
do
  if ((num % 2 == 0))
  then
    echo "$num even"
  else 
    echo "$num odd"
  fi
done