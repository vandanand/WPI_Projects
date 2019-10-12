(require 2htdp/image)

;;Vandana Anand 
;;Username: vanand

;;EXPRESSION EVALUATION

;; Problem 1

;; Part A

;;Original problem:
;;(if (< (string-length (string-append "CS" "1101"))
       ;;(* (- 8 5) (/ 30 15)))
    ;;36
    ;;(sqrt (+ (sqr 3) (- 11 4))))

;Evaluation:
;;the length of "CS" "1101" is greater so you would resort to false (second statement)
;;then evaluate the second statement:
;;(sqrt (+ 9 (- 11 4))))
;;(sqrt (+ 9 (7)))
;;(sqrt (16))
;;4

;;Part B

;;Original problem:
;;(and (> (+ (double (+ 1 3)) 10) (+ 15 5)) (> (double (+ 2 3)) 4))
;;where double is defined as
;;(define (double n)
;;   (* n 2))

;;Evaluation:
;;(and (> (+ (double (4)) 10) (+ 15 5)) (> (double (+ 2 3)) 4))
;;              ^ multiply 2 and 4 
;;(and (> (+ 8 10) (+ 15 5)) (> (double (+ 2 3)) 4))
;;(and (> (18) (20)) (> (double (+ 2 3)) 4))
;;(and (> (18) (20)) (> (double (5)) 4))
;;                        ^ multiply 2 and 5
;;(and (> (18) (20)) (> 10 4))
;; false 


;;COMPOSING FUNCTIONS

;;Problem 2

;; Image -> Image     SIGNATURE
;; Consumes an image and produces the actual image, and the flip vertical,
;;flip horizontal, and diagonal version of the original image     PURPOSE

;;Function definition

(define four-square .)


;;Function Body
(above
(beside
(rotate 0 four-square)
 (flip-horizontal
  (rotate 0 four-square)))

(beside
(rotate 180 four-square)
 (flip-vertical
  (rotate 0 four-square))))

;; Problem 3

;;Part A

;;Number -> Number     SIGNATURE
;;Consumes the number of attendees at an event and produces the cost to the    PURPOSE
;;performing arts center to hold the event
;;The price to hold the event is $1500 plus $2 for every attendee

;;function definition
(define (event-cost num-attend)
  (+ (* num-attend 2) 1500))
  

;;Test Cases
(check-expect (event-cost 20) 1540)

;;Part B

;;Number Number -> Number     SIGNATURE
;;Consumes the number of attendees at an event and the price per ticket     PURPOSE
;;and produces the income genreated by ticket sales 
;;The price to hold the event is $1500 plus $2 for every attendee

;;function definition
(define (ticket-revenue num-attend num-cost)
  (* num-attend num-cost))
  

;;Test Cases
(check-expect (ticket-revenue 20 5) 100)

;;Part C

;;Number Number -> Number     SIGNATURE
;;Consumes the number of attendees at an event and the price per ticket    PURPOSE
;;and produces the income genreated by ticket sales 
;;The price to hold the event is $1500 plus $2 for every attendee

;;function definition
(define (event-profit num-attend num-cost)
 (- (ticket-revenue num-attend num-cost)(event-cost num-attend)))

;;Test Cases
(check-expect (event-profit 1000 5) 1500)

;;work for calculating the expected value:
;;1000*5=5000=income
;;(1000*2)+1500=3500=cost of event
;;5000-3500=1500=revenue


;;Extra notes:
;;signature, purpose, check-expects, function definition (for problem 3)
;;need parameter to define any image, should be able to use any image in problem 2
