int fd; // file descriptor
byte mode;
int status;
fd = $fopen("search.txt","r");
status = $fscanf("%c,%h,%h",mode,addr,data); 
if(status != 3) error;// you did not read in 3 values
case(mode)
"r": rw=READ;
"w": rw=WRITE;
default: error;
endcase