integer file_faults;
integer scan_faults;
reg [7:0] data; // needs to be an "integral number of bytes in length"

initial begin
  file_faults = $fopen("search.txt", "r");
  if (file_faults == 0) begin
    $display("data_file handle was NULL");
    $finish;
  end
  while (!$feof(file_faults)) begin
    scan_faults = $fgets(data, file_faults); // arg order was wrong in original
    $display("scan_faults: %0d  data: %s", scan_faults, data);
  end
  $fclose(file_faults); // Close file before finish
  $finish;
end