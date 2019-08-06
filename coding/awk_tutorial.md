# Using awk

### Description


#### Selecting a specific line(s) from a file(s)

```awk 'FNR == 11 {print FILENAME, $0}' NAMEOFFILE.txt```

* `FNR` : Line number you want to print
* `print FILENAME` : built in `awk` variable that prints the file name (not needed but nice if you are printing lines from multiple files into a single log file).
* `$0` : Tells `awk` to print the whole line.
* `NAMEOFFILE.txt` : The specific file you want to print

**Example**

Print out the 11th line from a file.

Command
```
downey-wall.a@comp5[20190719_fastqc_trim_10bp_Cvirginica_MBD]# awk 'FNR == 11 {print FILENAME $0}' 17005*R1*.txt 
```
Output
```
17005_DNAm_R1.fastq.gz_trimming_report.txtAdapter sequence: 'CTGTCTCTTATA' (Nextera Transposase sequence; auto-detected)
```

**Code Extensions**

Multiple single lines with OR (`||` operation)
```
awk 'FNR==5 || FNR==9 {$0}' NAMEOFFILE.txt
```

A range of lines with AND (`&&` operation)
```
awk 'FNR >= 5 && FNR <= 10 {$0}' NAMEOFFILE.txt
```

Print from multiple files
```
awk 'FNR==11 {$0}' *.txt
```
