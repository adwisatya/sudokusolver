;;; The puzzle is: 
;;;
;;;    * * 1  2 * *  * 8 *
;;;    * 8 *  * 6 *  * 9 *
;;;    6 * *  * * *  1 * 4
;;;
;;;    * * *  * 9 *  2 * 8
;;;    * * *  6 * 5  * * *
;;;    9 * 7  * 2 *  * * *
;;;
;;;    2 * 4  * * *  * * 9
;;;    * 7 *  * 5 *  * 6 *
;;;    * 9 *  * * 1  3 * *
;;;
;;; The solution is: 
;;;
;;;    4 5 1  2 3 9  7 8 6
;;;    7 8 3  1 6 4  5 9 2
;;;    6 2 9  5 8 7  1 3 4
;;;
;;;    1 6 5  7 9 3  2 4 8
;;;    8 4 2  6 1 5  9 7 3
;;;    9 3 7  4 2 8  6 1 5
;;;
;;;    2 1 4  3 7 6  8 5 9
;;;    3 7 8  9 5 2  4 6 1
;;;    5 9 6  8 4 1  3 2 7
;;;
;;; Rules used:
;;;
;;;    Naked Single
;;;    Hidden Single
;;;    Locked Candidate Single Line
;;;    Locked Candidate Multiple Lines
;;;    Naked Pairs
;;;    Hidden Pairs
;;;    Naked Triples
;;;    Swordfish
;;;    Forced Chain Convergence
;;;    Forced Chain XY

(defrule grid-values

   ?f <- (phase grid-values)

   =>
   
   (retract ?f)
   
   (assert (phase expand-any))

   (assert (size 3))

   (assert (possible (row 1) (column 1) (value any) (group 1) (id 1)))
   (assert (possible (row 1) (column 2) (value any) (group 1) (id 2)))
   (assert (possible (row 1) (column 3) (value any) (group 1) (id 3)))
   (assert (possible (row 2) (column 1) (value any) (group 1) (id 4)))
   (assert (possible (row 2) (column 2) (value any) (group 1) (id 5)))
   (assert (possible (row 2) (column 3) (value any) (group 1) (id 6)))      

   (assert (possible (row 1) (column 4) (value any) (group 2) (id 7)))
   (assert (possible (row 1) (column 5) (value any) (group 2) (id 8)))
   (assert (possible (row 1) (column 6) (value 2) (group 2) (id 9)))
   (assert (possible (row 2) (column 4) (value any) (group 2) (id 10)))
   (assert (possible (row 2) (column 5) (value any) (group 2) (id 11)))
   (assert (possible (row 2) (column 6) (value 4) (group 2) (id 12)))

   (assert (possible (row 3) (column 1) (value any) (group 3) (id 13)))
   (assert (possible (row 3) (column 2) (value any) (group 3) (id 14)))
   (assert (possible (row 3) (column 3) (value any) (group 3) (id 15))) 
   (assert (possible (row 4) (column 1) (value any) (group 3) (id 16)))
   (assert (possible (row 4) (column 2) (value 5) (group 3) (id 17)))
   (assert (possible (row 4) (column 3) (value 6) (group 3) (id 18)))   

   (assert (possible (row 3) (column 4) (value 5) (group 4) (id 19)))
   (assert (possible (row 3) (column 5) (value any) (group 4) (id 20)))
   (assert (possible (row 3) (column 6) (value any) (group 4) (id 21)))
   (assert (possible (row 4) (column 4) (value any) (group 4) (id 22)))
   (assert (possible (row 4) (column 5) (value 3) (group 4) (id 23)))
   (assert (possible (row 4) (column 6) (value any) (group 4) (id 24)))   

   (assert (possible (row 5) (column 1) (value 5) (group 5) (id 25)))
   (assert (possible (row 5) (column 2) (value any) (group 5) (id 26)))
   (assert (possible (row 5) (column 3) (value any) (group 5) (id 27))) 
   (assert (possible (row 6) (column 1) (value any) (group 5) (id 28)))
   (assert (possible (row 6) (column 2) (value any) (group 5) (id 29)))
   (assert (possible (row 6) (column 3) (value any) (group 5) (id 30)))   

   (assert (possible (row 5) (column 4) (value 1) (group 6) (id 31)))
   (assert (possible (row 5) (column 5) (value any) (group 6) (id 32)))
   (assert (possible (row 5) (column 6) (value any) (group 6) (id 33)))
   (assert (possible (row 6) (column 4) (value any) (group 6) (id 34)))
   (assert (possible (row 6) (column 5) (value any) (group 6) (id 35)))
   (assert (possible (row 6) (column 6) (value any) (group 6) (id 36)))   

   )   
