;;Vandana Anand and Manasi Danke
;;vanand and mmdanke

;;Problem 1

(define-struct book (title author ISBN cover-type publisher pub-year num-copies))
;;a Book is a (make-book String String Natural Boolean String Natural Natural)
;;Interpretation: a Book with
;;title being the title of the book
;;author being the author of the book
;;ISBN being the ISBN number of the book
;;cover-type being whether or not the book is hard-cover(true) or paperback (false)
;;publisher being the name of the publisher 
;;pub-year being the year the book was published
;;num-copies being the number of copies of the book

(define-struct periodical (name volume issue))
;;a Periodical is a (make-periodical String Natural Natural)
;;Interpretation: a Periodical with
;;name is the name of the periodical
;;volume is the volume number
;;issue is the issue number

(define-struct cd (title author narrator num-disks pub-year playing-time num-copies))
;;a Cd is a (make-cd String String String Natural Natural Natural Natural)
;;Interpretation: a Cd with
;;title being the title of the cd
;;author being the author of the cd
;;narrator being the narrator of the cd
;;num-disks being the number of disks
;;pub-year being the year the cd was published
;;playing-time being the total amount of playing time in minutes 
;;num-copies being the number of copies of the cd


;;A Library is one of:
;;Book
;;Periodical
;;Cd

;;Problem 2

;;Example for a Book
(define Book1 (make-book "Butterfly" "Adam Levin" 097647 true "Harold Lays" 1987 455)) 
(define Book2 (make-book "Flowers" "Amanda Jay" 999447 false "Hays Ben" 2016 2000))

;;Example for a Periodical
(define Peri1 (make-periodical "Kites" 7 89))
(define Peri2 (make-periodical "Fireflies" 2 5))

;;Example for a Cd
(define Cd1 (make-cd "Rock" "Kelly Williams" "Ickla James" 4 2000 45 333)) 
(define Cd2 (make-cd "Classic" "Kyle Loble" "Robert Hayes" 2 2010 90 777))
(define Cd3 (make-cd "Classic" "Jessica Go" "Jessica Go" 2 2010 90 777))

;;Problem 3

;;Templates

; ;;fcn-for-book: Book -> 
; ;;
; (define (fcn-for-book a-book)
;   (... (book-title a-book)
;        (book-author a-book)
;        (book-ISBN a-book)
;        (book-cover-type a-book)
;        (book-publisher a-book)
;        (book-pub-year a-book)
;        (book-num-copies a-book)))
; 
; ;;fcn-for-periodical: Periodical ->          
; ;;
; (define (fcn-for-periodical a-peri)
;   (... (periodical-name a-peri)
;        (periodical-volume a-peri)
;        (periodical-issue a-peri)))
; 
; ;;fcn-for-cd: Cd -> 
; ;;
; (define (fcn-for-cd a-cd)
;   (... (cd-title a-cd)
;        (cd-author a-cd)
;        (cd-narrator a-cd)
;        (cd-num-disks a-cd)
;        (cd-pub-year a-cd)
;        (cd-playing-time a-cd)
;        (cd-num-copies a-cd)))
; 
; ;;fcn-for-library: Library ->
; ;;
; (define (fcn-for-library a-lib)
;   (cond [(book? a-lib) (... (book-title a-lib)
;                             (book-author a-lib)
;                             (book-ISBN a-lib)
;                             (book-cover-type a-lib)
;                             (book-publisher a-lib)
;                             (book-pub-year a-lib)
;                             (book-num-copies a-lib))]
;         [(periodical? a-lib) (... (periodical-name a-lib)
;                                   (periodical-volume a-lib)
;                                   (periodical-issue a-lib))]       
;         [(cd? a-lib) (... (cd-title a-lib)
;                           (cd-author a-lib)
;                           (cd-narrator a-lib)
;                           (cd-num-disks a-lib)
;                           (cd-pub-year a-lib)
;                           (cd-playing-time a-lib)
;                           (cd-num-copies a-lib))]))
; 



;;Problem 4

;;contributor?: Library String -> Boolean
;;consumes a library item and a name and produces a boolean. The function returns true if the library
;;item is a book whose author has the given name or if the item is a CD where either the author or the
;;narrator (or both) have the given name. The function returns false otherwise (it always returns
;;false for a periodical).

(define (contributor? a-lib a-name)
  (cond [(book? a-lib)  (compare-names? a-name (book-author a-lib))]               
        [(periodical? a-lib) false]                   
        [(cd? a-lib) (or   (compare-names? a-name (cd-author a-lib))
                           (compare-names? a-name (cd-narrator a-lib)))]))
                        
                        

(check-expect (contributor? Book1 "Adam Levin") true) ;;given name matches the author
(check-expect (contributor? (make-book "Flowers" "Shakes Pear" 097645 false "Compi" 1991 200) "Amanda Harold") false) ;; given name doesn't match the author
(check-expect (contributor? Cd1 "Kelly Williams") true) ;;given name matches author but not narrator
(check-expect (contributor? Cd2 "Robert Hayes") true) ;;given name matches narrator but not author
(check-expect (contributor? (make-cd "Pop" "Arianna Hi" "Victoria Kye" 2 2017 90 100) "Adam Levin") false) ;;given name matches neither the narrator nor the author
(check-expect (contributor? Cd3 "Jessica Go") true);;given name matches both the narrator and author
(check-expect (contributor? Peri1 "Jill Stan") false) ;;false for periodical
(check-expect (contributor? (make-periodical "Nature" 10 100) "Gager Yupis") false);;false for periodical 

;;Helper Function
;;compare-names?: String -> Boolean
;;consumes a name and produces true if the given name matches the name on the book or cd
;;or false otherwise

(define (compare-names? a-name name-on-item)
  (string=? a-name name-on-item))

(check-expect (compare-names? "Susan Millan" "Susan Millan") true) ;;same names so equal
(check-expect (compare-names? "Adamster Yelli" "Susan Millan") false) ;;not the same names 
(check-expect (compare-names? "Susan Millan" "Adamster Yelli") false) ;;not the same names -> different order

;;Problem 5

;;add-copy: Library -> Library
;;consumes a library item and produces a library item. The library item is returned unchanged if the
;;given item is a periodical. Otherwise, the item that's produced is the same as the original, except
;;that the number of copies of the item has been increased by 1.
                                                    
(define (add-copy a-lib)
  (cond [(book? a-lib) (make-book (book-title a-lib)
                            (book-author a-lib)
                            (book-ISBN a-lib)
                            (book-cover-type a-lib)
                            (book-publisher a-lib)
                            (book-pub-year a-lib)
                            (+ (book-num-copies a-lib) 1))]
        [(periodical? a-lib) (make-periodical (periodical-name a-lib)
                                  (periodical-volume a-lib)
                                  (periodical-issue a-lib))]       
        [(cd? a-lib) (make-cd (cd-title a-lib)
                          (cd-author a-lib)
                          (cd-narrator a-lib)
                          (cd-num-disks a-lib)
                          (cd-pub-year a-lib)
                          (cd-playing-time a-lib)
                          (+ (cd-num-copies a-lib) 1))]))

;;with already defined examples
(check-expect (add-copy Book1) (make-book "Butterfly" "Adam Levin" 097647 true "Harold Lays" 1987 456));;adds 1 to num-copies for book
(check-expect (add-copy Peri1) Peri1);;produces same as original for periodical 
(check-expect (add-copy Cd3) (make-cd "Classic" "Jessica Go" "Jessica Go" 2 2010 90 778));;adds 1 to num-copies for cd
;;Not with already defined examples
(check-expect (add-copy (make-book "Flowers" "Shakes Pear" 097645 false "Compi" 1991 200)) (make-book "Flowers" "Shakes Pear" 097645 false "Compi" 1991 201));;adds 1 to num-copies for book
(check-expect (add-copy (make-periodical "Nature" 10 100)) (make-periodical "Nature" 10 100));;produces same as original for periodical 
(check-expect (add-copy (make-cd "Pop" "Arianna Hi" "Victoria Kye" 2 2017 90 99)) (make-cd "Pop" "Arianna Hi" "Victoria Kye" 2 2017 90 100));;adds 1 to num-copies for cd

;;For problems 6,7,8

;; a ListOfString is one of
;;  empty
;;  (cons String ListOfString)
;; interp:  ListOfString represents a list of strings

;;Template
; ;;fcn-for-los: ListOfString -> 
; ;;
; (define (fcn-for-los alos)
;   (cond [(empty? alos) (...)]
;         [(cons? alos) (...(first alos)
;                           (fcn-for-los (rest alos)))]))


;;Problem 6

;;character-count: ListOfString -> Natural
;;consumes a ListOfString and counts the total number of characters in all strings in the list.

(define (character-count alos)
  (cond [(empty? alos) 0]
        [(cons? alos) (+ (string-length (first alos))
                          (character-count (rest alos)))]))

(check-expect (character-count empty) 0);;base case 
(check-expect (character-count (cons "Butterfly" empty)) 9);;one item in list
(check-expect (character-count (cons "Butterfly" (cons "picture" (cons "suns" empty)))) 20) ;;more than 1 item in list 

;;Problem 7

;;numeric-strings: ListOfString -> ListOfString 
;;consumes a ListOfString and produces a ListOfString. The list that's produced contains only those
;;strings from the original list that consist entirely of numeric characters.

(define (numeric-strings alos)
  (cond [(empty? alos) empty]
        [(cons? alos) (if (string-numeric?(first alos))
                          (cons (first alos)(numeric-strings (rest alos)))
                          (numeric-strings (rest alos)))])) 

(check-expect (numeric-strings empty) empty);;base case
(check-expect (numeric-strings (cons "sunset" (cons "1101" (cons "2102" empty)))) (cons "1101" (cons "2102" empty))) ;;non-numeric string in beggining of the list 
(check-expect (numeric-strings (cons "2102" (cons "flowers" (cons "1102" empty)))) (cons "2102" (cons "1102" empty))) ;;non-numeric string in middle of the list 
(check-expect (numeric-strings (cons "23456" (cons "990" (cons "roses" empty)))) (cons "23456" (cons "990" empty))) ;;non-numeric string in end of the list 
(check-expect (numeric-strings (cons "sunset12" (cons "78turtle" (cons "11s01" (cons "2102" empty))))) (cons "2102" empty)) ;;numbers within strings


;;Problem 8

;;count-X: ListOfString -> Natural 
;;consumes a ListOfString and counts the total number of X's (upper and lower case) that occur in all
;;strings in the list.

(define (count-X alos)
  (cond [(empty? alos) 0]
        [(cons? alos) (+ (str-to-num (explode-fcn (first alos)))
                           (count-X (rest alos)))]))

(check-expect (count-X empty) 0);;base case
(check-expect (count-X (cons "xxxcheriesxxx" empty)) 6);;one item in list
;;more than 1 item in list:
(check-expect (count-X (cons "hats" (cons "kitesflyX" (cons "XxxcheriesxXx" empty)))) 7);;first item has no x's
(check-expect (count-X (cons "XxxcheriesxXx" (cons "hats" (cons "XXXkitesflyX" empty)))) 10);;middle item has no x's
(check-expect (count-X (cons "kixteXsflyX" (cons "XxxcheriesxXx" (cons "hats" empty)))) 9);;last item has no x's

;;Helper Function
;;explode-fcn: String -> ListOfString
(define (explode-fcn word)
  (explode word))

(check-expect (explode-fcn "dog") (cons "d" (cons "o" (cons "g" empty))));;takes apart word given

;;Helper Function
;;str-to-num: ListOfString -> Number
;;consumes a list of strings and produces a number

(define (str-to-num alos)
  (cond [(empty? alos) 0]
        [(cons? alos) (if (or (string=? "x" (first alos))
                              (string=? "X" (first alos)))
                          (+ 1 (str-to-num (rest alos)))
                          (str-to-num (rest alos)))]))

(check-expect (str-to-num empty) 0) ;;base case
(check-expect (str-to-num (cons "Harold" empty)) 0) ;;no X/x's




