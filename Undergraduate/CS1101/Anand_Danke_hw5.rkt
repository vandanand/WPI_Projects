;;Vandana Anand and Manasi Danke
;;vanand and mmdanke 

;;Problem 1 

(define-struct river (name pH DO tributaries))
;; a River is a (make-river String Number Number ListOfRiver)
;;a River where
;;name is the name of the river
;;pH is the acidity of the river
;;DO is the dissolved oxygen levels of the river
;;tributaries is the list of rivers that feed off of the river

;;A ListOfRiver is one of
;;empty
;;(cons River ListOfRiver)

;;Problem 2

(define Riversys1 (make-river "Missouri River" 5.4 15 (list (make-river "Jefferson River" 3.2 12 (list (make-river "Beaverhead River" 14 16 empty)
                                                                                                       (make-river "Big Hole River" 1.1 6.5 empty)))
                                                            (make-river "Sun River" 12 2 empty)
                                                            (make-river "Yellowstone River" 11 4 (list (make-river "Gardner River" 7.2 9 empty)
                                                                                                       (make-river "Shields River" 4.5 8 empty)
                                                                                                       (make-river "Boulder River" 10.2 2 empty)))
                                                            (make-river "Madison River" 4.5 8.5 empty)
                                                            (make-river "Gallatin River" 6.5 6 empty))))

(define Riversys2 (make-river "Apple" 8.3 15 (list (make-river "Cairo" 6.9 10 (list (make-river "Brazil" 14 16 empty)))
                                                   (make-river "Moon" 12 2 (list (make-river "Kite" 8.5 1 empty)
                                                                                 (make-river "Youli" 7.4 6.1 empty)))
                                                   (make-river "Purple" 3.2 4 empty)
                                                   (make-river "Poli" 7 7 empty)
                                                   (make-river "Train" 8 9 (list (make-river "Nile" 7 3 empty))))))

;;Problem 3

; ;;Templates
; 
; ;;fcn-for-river: River ->
; ;;
; (define (fcn-for-river a-river)
;   (... (river-name a-river)
;        (river-pH a-river)
;        (river-DO a-river)
;        (fcn-for-alor (river-tributaries a-river))))
; 
; ;;fcn-for-alor: ListOfRiver ->
; ;;
; (define (fcn-for-alor alor)
;   (cond [(empty? alor) ...]
;         [(cons? alor) (... (fcn-for-river (first alor))
;                            (fcn-for-alor (rest alor)))]))


;;Problem 4

;;more-acidic-than: River Number -> Natural
;;consumes a river system and a pH level and produces the number of rivers in the system that have a pH
;;level lower than the given level.

(define (more-acidic-than a-river pH-level)
  (if (< (river-pH a-river) pH-level)
      (+ 1
       (list-acidic (river-tributaries a-river) pH-level))
      (+ 0
         (list-acidic (river-tributaries a-river) pH-level))))

(check-expect (more-acidic-than Riversys1 2) 1) ;;get back amount of rivers that have a pH lower than the given
(check-expect (more-acidic-than Riversys1 14) 10)
(check-expect (more-acidic-than Riversys2 6) 1)

;;list-acidic: ListOfRiver -> Natural
;;consumes a list of river and produces the number of rivers that have a pH
;;level lower than the given level.

(define (list-acidic alor pH-level)
  (cond [(empty? alor) 0]
        [(cons? alor) (+ (more-acidic-than (first alor) pH-level)
                           (list-acidic (rest alor) pH-level))]))

(check-expect (list-acidic empty 9) 0) ;;base case
(check-expect (list-acidic (list (make-river "Cario" 5.9 10 (list (make-river "Kalz" 14 16 empty)
                                                            (make-river "Zoo" 3.2 20 empty)))) 7) 2) ;;takes a list of rivers and returns 2 since Cario and Zoo Rivers have pH less than 7

;;Problem 5

;;rivers-at-risk: River -> ListOfString
;;consumes a river system and produces a list of strings. The function produces a list of the names of all
;;rivers in the river system that have a pH level below 6.5, or a pH level above 8.5, or a DO level less
;;than 6 mg/L.

(define (rivers-at-risk a-river)
  (if(or(< (river-pH a-river) 6.5)
        (> (river-pH a-river) 8.5)
        (< (river-DO a-river) 6))
     
       (cons (river-name a-river) 
       (risk-list (river-tributaries a-river)))
       
       (risk-list (river-tributaries a-river))))
                  

(check-expect (rivers-at-risk Riversys1) (list "Missouri River" "Jefferson River" "Beaverhead River"
                                               "Big Hole River" "Sun River" "Yellowstone River"
                                               "Shields River" "Boulder River" "Madison River")) ;;returns names of rivers in river system 1 with pH in guidelines 

(check-expect (rivers-at-risk Riversys2) (list "Brazil" "Moon" "Kite" "Purple" "Nile")) ;;returns names of rivers in river system 2 with pH in guidelines 


;;risk-list: ListOfRiver -> ListOfString
;;consumes a list of river and produces a list of all the names in the river system that have a pH level
;;below 6.5, or a pH level above 8.5, or a DO level less than 6 mg/L.
(define (risk-list alor)
  (cond [(empty? alor) empty]
        [(cons? alor) (append (rivers-at-risk (first alor))
                           (risk-list (rest alor)))]))

(check-expect (risk-list empty) empty) ;;base case
(check-expect (risk-list (list (make-river "Cario" 7 10 (list (make-river "Kalz" 14 16 empty) ;;produces the rivers Kalz, Zoo, and Haloz since they come in the guidelines 
                                                            (make-river "Zoo" 3.2 20 empty)
                                                             (make-river "Haloz" 9.8 1 empty))))) (list "Kalz" "Zoo" "Haloz"))

;;Problem 6

;;lower-all-ph: River -> River 
;;consumes a river system and produces a river system. The river system that is produced is the same as
;;the original, except that the pH of all the rivers in the system has been lowered by 0.1.

(define (lower-all-ph a-river)
  (make-river (river-name a-river)
              (- (river-pH a-river) 0.1)
              (river-DO a-river)
              (lower-in-list (river-tributaries a-river))))


(check-expect (lower-all-ph Riversys1) (make-river "Missouri River" 5.3 15 (list (make-river "Jefferson River" 3.1 12 (list (make-river "Beaverhead River" 13.9 16 empty) ;;returns river system with pH lowered by 0.1
                                                                                                       (make-river "Big Hole River" 1.0 6.5 empty)))
                                                            (make-river "Sun River" 11.9 2 empty)
                                                            (make-river "Yellowstone River" 10.9 4 (list (make-river "Gardner River" 7.1 9 empty)
                                                                                                       (make-river "Shields River" 4.4 8 empty)
                                                                                                       (make-river "Boulder River" 10.1 2 empty)))
                                                            (make-river "Madison River" 4.4 8.5 empty)
                                                            (make-river "Gallatin River" 6.4 6 empty))))

(check-expect(lower-all-ph Riversys2) (make-river "Apple" 8.2 15 (list (make-river "Cairo" 6.8 10 (list (make-river "Brazil" 13.9 16 empty)))
                                                   (make-river "Moon" 11.9 2 (list (make-river "Kite" 8.4 1 empty)
                                                                                 (make-river "Youli" 7.3 6.1 empty)))
                                                   (make-river "Purple" 3.1 4 empty)
                                                   (make-river "Poli" 6.9 7 empty)
                                                   (make-river "Train" 7.9 9 (list (make-river "Nile" 6.9 3 empty))))))

              
;;lower-in-list: ListOfRiver -> ListOfRiver 
;;consumes a list of river and produces a list of rivers with their pH lowered by 0.1
(define (lower-in-list alor)
  (cond [(empty? alor) empty]
        [(cons? alor) (cons (lower-all-ph (first alor))
                           (lower-in-list (rest alor)))]))

(check-expect (lower-in-list empty) empty) ;;base case
(check-expect (lower-in-list (list (make-river "Cario" 5.9 10 (list (make-river "Kalz" 14 16 empty) ;;produces list of rivers with their pH lowered by 0.1
                                                            (make-river "Zoo" 3.2 20 empty))))) (list (make-river "Cario" 5.8 10 (list (make-river "Kalz" 13.9 16 empty)
                                                            (make-river "Zoo" 3.1 20 empty)))))

;;Problem 7

;;find-subsystem: String River -> River or false
;;consumes the name of a river and a river system and produces either a river system or false. The
;;function returns the portion of the original river system that has the named river as its root.
;;If there is no river in the system with the given name, the function returns false.

(define (find-subsystem name a-river)
  (if (string=? (river-name a-river) name)
       a-river
       (find-in-list name (river-tributaries a-river))))

(check-expect (find-subsystem "Jefferson River" Riversys1) (make-river "Jefferson River" 3.2 12 (list (make-river "Beaverhead River" 14 16 empty) ;returns the river along with it's tributaries since it was found (in middle of list)
                                                                                                       (make-river "Big Hole River" 1.1 6.5 empty))))

(check-expect (find-subsystem "Missouri River" Riversys1) (make-river "Missouri River" 5.4 15 (list (make-river "Jefferson River" 3.2 12 (list (make-river "Beaverhead River" 14 16 empty) ;returns the river along with it's tributaries since it was found (in beginning of list)
                                                                                                       (make-river "Big Hole River" 1.1 6.5 empty)))
                                                            (make-river "Sun River" 12 2 empty)
                                                            (make-river "Yellowstone River" 11 4 (list (make-river "Gardner River" 7.2 9 empty)
                                                                                                       (make-river "Shields River" 4.5 8 empty)
                                                                                                       (make-river "Boulder River" 10.2 2 empty)))
                                                            (make-river "Madison River" 4.5 8.5 empty)
                                                            (make-river "Gallatin River" 6.5 6 empty))))

(check-expect (find-subsystem "Train" Riversys2) (make-river "Train" 8 9 (list (make-river "Nile" 7 3 empty)))) ;returns the river along with it's tributaries since it was found (in end of list)

(check-expect (find-subsystem "Purple" Riversys2) (make-river "Purple" 3.2 4 empty)) ;;one river in list returned since it doesn't have any tributaries

(check-expect (find-subsystem "Aloha River" Riversys2) false) ;;returns false because river is not found


;;find-in-list: String ListOfRiver -> River or false
;; consumes a name of a river and a list of river and produces the river along with it's tributaries if found
;;or false if there is no such river found

(define (find-in-list name alor)
  (cond [(empty? alor) false]
        [(cons? alor) (if (river? (find-subsystem name (first alor)))
                           (find-subsystem name (first alor))
                           (find-in-list name (rest alor)))]))

(check-expect (find-in-list "Tupac" empty) false) ;;base case
(check-expect (find-in-list "Zoo" (list (make-river "Cario" 7 10 (list (make-river "Kalz" 14 16 empty) ;;produces Zoo river since that is found
                                                            (make-river "Zoo" 3.2 20 empty)
                                                             (make-river "Haloz" 9.8 1 empty))))) (make-river "Zoo" 3.2 20 empty))

;;Problem 8

;;count-acidic-tributaries-of: River String -> Natural
;;consumes a river system and the name of a river. The function produces a count of the number of
;;tributaries of the named river which have a pH < 6.5.

(define (count-acidic-tributaries-of a-river name)
  (count-acidic-list (river-tributaries (find-subsystem name a-river))))

(check-expect (count-acidic-tributaries-of Riversys1 "Madison River") 0) ;;no tributaries 
(check-expect (count-acidic-tributaries-of Riversys1 "Yellowstone River") 1) ;; Shields River is a tributary that has pH < 6.5
(check-expect (count-acidic-tributaries-of Riversys1 "Missouri River") 4) ;doesn't inlcude missouri and returns 4 since 4 of its tributaries have pH < 6.5
(check-expect (count-acidic-tributaries-of Riversys2 "Moon") 0) ;no tributaries have pH less than 6.5

;;compare-pH: River -> Natural
;;consumes a river system and produces the amount of rivers with pH less than 6.5

(define (compare-pH a-river)
  (if (< (river-pH a-river) 6.5)
      (+ 1 (count-acidic-list (river-tributaries a-river)))
      (+ 0 (count-acidic-list (river-tributaries a-river)))))

(check-expect (compare-pH Riversys2) 1) ;;one river has pH less than 6.5 
(check-expect (compare-pH Riversys1) 5) ;;more than one river with pH less than 6.5 

;;count-acidic-list: ListOfRivers -> Natural
;;consumes a list of river and produces the amount of tributaries with pH less than 6.5

(define (count-acidic-list alor)
  (cond [(empty? alor) 0]
        [(cons? alor) (+ (compare-pH (first alor))
                           (count-acidic-list (rest alor)))]))

(check-expect (count-acidic-list empty) 0) ;;base case
(check-expect (count-acidic-list (list (make-river "Cario" 5.9 10 (list (make-river "Kalz" 14 16 empty) ;;produces list of rivers with pH less than 6.5 
                                                            (make-river "Zoo" 3.2 20 empty))))) 2)
