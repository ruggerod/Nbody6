*       NBODY6 parameters.
*       ------------------
*
*       Choose between small or large run.
*     PARAMETER  (NMAX=131072,KMAX=65536,LMAX=600,MMAX=1024,
*     PARAMETER  (NMAX=140010,KMAX=10010,LMAX=500,MMAX=50,
*     PARAMETER  (NMAX=102010,KMAX=1010,LMAX=600,MMAX=50,
*     PARAMETER  (NMAX=102010,KMAX=50000,LMAX=500,MMAX=50,
*     PARAMETER  (NMAX=65556,KMAX=100,LMAX=500,MMAX=100,
*     PARAMETER  (NMAX=65566,KMAX=10,LMAX=500,MMAX=10,
*     PARAMETER  (NMAX=33000,KMAX=100,LMAX=400,MMAX=100,
*     PARAMETER  (NMAX=25020,KMAX=1010,LMAX=300,MMAX=10,
      PARAMETER  (NMAX=4200,KMAX=1010,LMAX=200,MMAX=10,
     &            MLD=22,MLR=22,MLV=10,MCL=10,NCMAX=10,NTMAX=100)
*
*
*       ------------------------------------------------------
*       NMAX    Maximum number of single bodies + 3*NBIN + NHI.
*       KMAX    Maximum number of KS solutions.
*       LMAX    Maximum size of neighbour lists.
*       MMAX    Maximum number of merged binaries.
*       MLD     Maximum number of disrupted KS components.
*       MLR     Maximum number of recently regularized KS pairs.
*       MLV     Maximum number of high-velocity particles.
*       MCL     Maximum number of interstellar clouds.
*       NCMAX   Maximum number of chain members (do not change).
*       NTMAX   Maximum number of circularizing binaries.
*       ------------------------------------------------------
*
