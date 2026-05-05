# for compilation 
gcc -o hello hello.c

# for checking all the expanded codes before compilation
cpp hello.c

# making preprocessed file in a c file
cpp hello.c > hello-preprocessed.c

# converting the preprocessed file into assembly
gcc -S -masm=intel hello-preprocessed.c
