## Analyzing the load on the system at the moment

CPU, Memory, Disk consumption analysis

```bash
splincode@mivanov:~/system-monitor$ ./shell/sys.sh # watch mode
[INFO] You did not specify the file name with the first arguments
[INFO] create logfile: /home/splincode/system-monitor/shell/tsv/mivanov.tsv
=======================
15:42:08 30.08.2017 	 CPU USAGE: 1.94% 	 MEMORY USAGE: 19.08% 	 DISK USAGE: 14%
```

```bash
# result 
$ cat shell/tsv/mivanov.tsv
CPU(%)	RAM(%)	DISK(%)
1.94	  19.08	  14
1.94	  19.08	  14
1.94	  19.08	  14
1.94	  19.08	  14
```

### Recommendation
```bash
$ chmod +x shell/sys.sh
```

### TODO
- [x] Measuring the CPU
- [x] Measuring Memory Usage
- [x] Definition of disk space
- [x] Generation tsv
