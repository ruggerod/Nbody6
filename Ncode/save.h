c common data file for writing snapshots
c
c note: a file snaptable.dat with the times [nbody units] at which 
c 	the snapshots should be saved must be present in the output 
c	folder

      integer LTBM,Ltable,Ltablemax
      parameter(LTBM=20000)

      real table
      common /tbl/ Ltable,Ltablemax,table(LTBM)
