# Async-FIFO
Data rate = Number of Data x Time Period
Difference = DRFAST – DRSLOW
Depth = Difference / Higher Freq. Time Period



FW is writing frequency 
FR is reading frequency 
(FW>FR) and Data Size is D (Data Words)

Time taken to write to FIFO = DATA/FW
Data Read from the FIFO in the same time = (DATA/FW) xFR
Excess Data is FIFO (Backlog) = DATA-((DATA/FW) x FR
mop-up time = time to read the data (Read) .

Following is the calculation of mop-up time
Mop-up time = Backlog/FR = DATA-(DATA/FW FR)
Depth= Wmax – {Wmax x Fread x Wread}

Fwrite x WwriteFwrite = Clock Frequency of Write Clock Domain

Fread = Clock Frequency of Read Clock Domain
Wmax= Maximum number of worlds can be Written
Wwrite = Number of Writes in Per Clock
Wread = Number of reads in Per Clock

Following are some cases of FIFO depth calculation with perfect explanation.

Case: 1
Writing Side = 30 MHz => 33.33 ns Time Period
Reading Side = 40 MHz = > 25.0 ns Time Period

Solution:
Consider the data size is = 10
Data Rate of Writing = 10 x (1/30) =333.33 ns
Data Rate of Reading = 10 x (1/40) =250.0 ns.
Difference between Data Rates = 333.33 – 250.0 = 83.33
Now divide with highest frequency time period = 83.33/25ns = 3.3332 = 4 (Aprox)
Depth of FIFO Should be 4

Case: 2
Writing Side = 80 Data/100 Clock = 100 MHz => 10ns Time Period
Reading Side = 80 Data/80 Clock = 80 MHz => 12.5ns Time Period
No Randomization

Solution:
Data Size is = 80
Data Rate of Writing =80*10=800ns
Data Rate of Reading=80*12.5=1000ns
Difference = 1000-800=200ns
Now divide with highest frequency time period = 200/10ns=20
Depth of FIFO Should be 20


Case: 3
Writing Side = 10 MHz => 100 ns
Reading Side = 2.5 MHz=>400 ns
Word Size = 2
Solution:

Data Rate of Writing =100*2=200ns
Data Rate of Reading=400*2=800ns
Difference = 800-200=600
Now Divide by the lowest frequency time period = 600/400 = 1.5 = 2

(Reading Frequency is slower than writing Frequency )
Case: 4
Writing Data = 80 DATA/100 Clock (Randomization of 20 Data’s)
Outgoing Data= 8 DATA/10 Clock

Solution:
Above shows that the Writing Frequency is equal to reading frequency
20 Data + 80 Valid Data + 80 Valid Data + 20 DataWe will consider worst case

So we will consider 200 Cycles. In 200 Cycle 160 Data is written. it means 160 data continuously written in 160 clock it is the worst case .
At the reading side we will Read 8x16=128 data in 16x10=160 Clock Cycle.
So the Difference between Written Data and Read Back Data is = 160-128=32

FIFO Depth Should be 32
