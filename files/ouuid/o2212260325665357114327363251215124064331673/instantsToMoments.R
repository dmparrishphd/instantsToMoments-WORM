function ( x ) {

    stopifnot (
        is.numeric ( x ) ,
        all ( is.finite ( x ) ) )

    LENGTH <- length ( x )
    stopifnot ( 1L < LENGTH )

    DIFF <- diff ( x )
    stopifnot ( all ( 0 < DIFF ) )

    N <- LENGTH
    M <- length ( DIFF )

    H <- DIFF / 2 # HALF-DIFFS

    c (
        # EXTEND LEFT-MOST HALF-DIFF TO THE LEFT:---
        x [[ 1 ]] - H [[ 1 ]] ,
        x [ -1  ] - H  ,
        # EXTEND RIGHT-MOST HALF-DIFF TO THE RIGHT:---
        x [[ N ]] + H [[ M ]] ) }
