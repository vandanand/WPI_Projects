;;Vandana Anand and Manasi Danke
;;vanand and mmdanke

;;Problem 1:

(define-struct ad (name duration cost nationally? time-of-day num-aired))
;;an Ad is a (make-ad String Natural Number Boolean TimeOfDay Natural)
;;an Ad where
;;name is the name of the product the ad is for
;;duration is the duration of the ad (in seconds)
;;cost is the cost to produce the ad (in thousands of dollars)
;;nationally? is whether or not the ad is to be aired nationally (true to represent national) or locally (false to represent local)
;;time-of-day is the time of day that the ad is to be aired (either daytime, primetime, or off-hour)
;;num-aired is the number of times the ad is to be aired

;;TimeOfDay is one of:
;;"daytime"
;;"primetime"
;;"off-hour"

;;ListOfAd is one of:
;;empty
;;(cons Ad ListOfAd)

;;Examples of an Ad
(define Ad1 (make-ad "Trump" 180 3 true "off-hour" 10))
(define Ad2 (make-ad "Obama" 100 8 true "daytime" 4))
(define Ad3 (make-ad "Biden" 210 6 false "off-hour" 2))
(define Ad4 (make-ad "Kelly" 230 5 false "primetime" 3))

;;Examples of a ListOfAd
(define Aloa1 (cons Ad1 (cons Ad2 (cons (make-ad "Clinton" 200 10 false "primetime" 1) empty))))
(define Aloa2 (cons Ad3 (cons Ad1 (cons (make-ad "Bill" 150 4 false "primetime" 9) (cons Ad2 empty)))))
(define Aloa3 (cons Ad3 (cons Ad1 (cons (make-ad "Jill" 150 4 false "primetime" 9) empty))))
(define Aloa4 (cons Ad1 (cons Ad2 empty)))
(define Aloa5 (cons Ad3 (cons Ad1 (cons (make-ad "Mill" 150 4 false "off-hour" 9) empty))))

;;Problem 2

;;Template for Ad
; ;;fcn-for-ad: Ad->          
; 
; (define (fcn-for-ad an-ad)
;   (... (ad-name an-ad)
;        (ad-duration an-ad)
;        (ad-cost an-ad)
;        (ad-nationally? an-ad)
;        (ad-time-of-day an-ad)
;        (ad-num-aired an-ad)))     
; 


;;Template for ListOfAd
; ;;fcn-for-aloa: ListOfAd ->
; 
; (define (fcn-for-aloa aloa)
;   (cond [(empty? aloa) (...)]
;         [(cons? aloa) (... (fcn-for-ad (first aloa))
;                            (fcn-for-aloa (rest aloa)))]))


;;Problem 3

;;count-long-primetime: ListOfAd Natural -> Natural
;;consumes a list of ads and an amount of time (in seconds) and produces the number of primetime ads
;;in the list that run longer than the given number of seconds.

(define (count-long-primetime aloa time)
  (cond [(empty? aloa) 0]
        [(cons? aloa) (if (one-primetime-length? (first aloa) time)
                          (+ 1 (count-long-primetime (rest aloa) time))
                           (count-long-primetime (rest aloa) time))]))
  

(check-expect (count-long-primetime empty 400) 0) ;; base case
(check-expect (count-long-primetime Aloa2 130) 1) ;; Takes a list and prodcues 1 ad that meets both qualifications
(check-expect (count-long-primetime Aloa1 300) 0) ;; None of the ads meet the qualifications
(check-expect (count-long-primetime (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Nick" 120 7 true "off-hour" 9) (cons Ad4 empty)))  100) 2) ;;Ads either meet both of the expectations or doesn't meet one out of the 2

;;one-primetime-length?: Ad Natural -> Boolean
;;consumes an ad and a time in seconds and produces true if the ad has both a duration greater than
;;the time given and is a primetime ad

(define (one-primetime-length? an-ad time)
  (if (and ( > (ad-duration an-ad) time)
           (string=? (ad-time-of-day an-ad) "primetime"))
      true
      false))

(check-expect (one-primetime-length? Ad2 200) false) ;;doesn't meet conditions (ad is not primetime)
(check-expect (one-primetime-length? Ad4 200) true) ;;does met conditions

;;Problem 4

;;any-ads-in-timeslot?: ListOfAd TimeOfDay -> Boolean
;;consumes a list of ads and a TimeOfDay, and produces a Boolean. The function returns true if the
;;list contains any ads that run in the given time of day.

(define (any-ads-in-timeslot? aloa timeofday)
  (cond [(empty? aloa) false]
        [(cons? aloa) (or (time-day? (first aloa) timeofday)
                           (any-ads-in-timeslot? (rest aloa) timeofday))]))

(check-expect (any-ads-in-timeslot? empty "primetime") false) ;;base case
(check-expect (any-ads-in-timeslot? Aloa3 "daytime") false) ;;no ads have given string
(check-expect (any-ads-in-timeslot? Aloa2 "off-hour") true) ;;some ads have given string
(check-expect (any-ads-in-timeslot? (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Nick" 120 7 true "primetime" 9) (cons Ad4 empty))) "primetime") true) ;;all ads have given sting

;;time-day?: Ad TimeOfDay -> Boolean
;;consumes an ad and a TimeOfDay, and produces a Boolean. The function returns true if the
;;list contains any ad that runs in the given time of day.

(define (time-day? an-ad timeofday)
  (if (string=? (ad-time-of-day an-ad) timeofday)  
       true
       false))

(check-expect (time-day? Ad2 "primetime") false) ;;given string not in ad shown time
(check-expect (time-day? Ad3 "off-hour") true) ;;givens string is there in ad shown time

;;Problem 5

;;national-ads: ListOfAds -> ListOfAds
;;consumes a list of ads and produces a list of all the ads airing nationally.

(define (national-ads aloa)
  (cond [(empty? aloa) empty]
        [(cons? aloa) (if (ad-nationally? (first aloa))
                          (cons (first aloa) (national-ads (rest aloa)))
                           (national-ads (rest aloa)))]))

(check-expect (national-ads empty) empty) ;;base case
(check-expect (national-ads Aloa4) Aloa4) ;;return same list since all ads are national
(check-expect (national-ads (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Nick" 120 7 true "primetime" 9) (cons Ad4 (cons (make-ad "Chuck" 60 2 true "daytime" 15) empty))))) (cons (make-ad "Nick" 120 7 true "primetime" 9) (cons (make-ad "Chuck" 60 2 true "daytime" 15) empty))) ;;produces list of ads being nationally aired       

;;Problem 6

;;late-night-products: ListOfAd -> ListOfString
;;consumes a list of ads and produces a list of strings. The list that is produced contains the names
;;of the products that are advertised during the off-hours.

(define (late-night-products aloa)
  (cond [(empty? aloa) empty]
        [(cons? aloa) (if (ad-string? (first aloa))
                          (cons (ad-name (first aloa)) (late-night-products (rest aloa)))
                          (late-night-products (rest aloa)))]))

(check-expect (late-night-products empty) empty) ;;base case
(check-expect (late-night-products Aloa1) (cons "Trump" empty)) ;;one ad is an off-hour
(check-expect (late-night-products Aloa5) (cons "Biden" (cons "Trump" (cons "Mill" empty)))) ;;three ads are off-hours
(check-expect (late-night-products (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Marley" 130 8 false "daytime" 9) empty))) empty) ;;none are off-hours

;;ad-string: Ad -> Boolean
;;consumes an Ad and produces a boolean if the ads that are advertised are during off-hours

(define (ad-string? an-ad)
  (if (string=? (ad-time-of-day an-ad) "off-hour")
      true
      false))

(check-expect (ad-string? Ad1) true) ;;this had is shown during off-hour
(check-expect (ad-string? Ad2) false) ;; this ad is not shown during off-hour 
       
;;Problem 7:

;;air-cost: Ad -> Number
;;consumes an Ad and produces a number. The number produced is the cost of airing the ad.

(define (air-cost an-ad)
  (* (discounts an-ad)(ad-num-aired an-ad)))

;;test cases
(check-expect (air-cost Ad1) 3000) ;;checks total aircost for an ad
(check-expect (air-cost Ad2) 1066.6)
(check-expect (air-cost Ad3) 35)
(check-expect (air-cost Ad4) 115)

;;helpers:

;;national-or-local: Ad -> Number 
;;consumes an Ad and produces the number based on if the ad is released nationally or locally

(define 30-SECOND-BLOCK 30)
(define NATIONAL 100)
(define LOCAL 5)

(define (national-or-local an-ad)
   (if (ad-nationally? an-ad)
     ( * (/ (ad-duration an-ad) 30-SECOND-BLOCK) NATIONAL)
     ( * (/ (ad-duration an-ad) 30-SECOND-BLOCK) LOCAL)))

;;test cases
(check-expect (national-or-local Ad1) 600) ;;checks costs based on ad being broadcast nationally or locally
(check-expect (national-or-local Ad2) 333.3)
(check-expect (national-or-local Ad3) 35)
(check-expect (national-or-local Ad4) 38.3)


;;discounts: Number -> Number   
;;consumes a number from the previous helper function (national-or-local) and produces a number based
;;on the discounts the ad gets which is based on the time it is airing.

(define DAYTIME-DISCOUNT 0.8)
(define OFFHOUR-DISCOUNT 0.5)

(define (discounts an-ad)
     (if (string=? (ad-time-of-day an-ad) "daytime")
         (* (national-or-local an-ad) DAYTIME-DISCOUNT)
         (if (string=? (ad-time-of-day an-ad) "off-hour")
             (* (national-or-local an-ad) OFFHOUR-DISCOUNT)
             (+ 0 (national-or-local an-ad)))))

(check-expect (discounts Ad1) 300) ;;checks the number of discounts each ad gets
(check-expect (discounts Ad2) 266.6)
(check-expect (discounts Ad3) 17.5)
(check-expect (discounts Ad4) 38.3)

;;Problem 8:

;;total-ad-cost: Ad -> Number   
;;consumes an Ad and produces the total cost of the ad. The total cost is the sum of the cost of
;;producing the ad and the cost of airing the ad.

(define (total-ad-cost an-ad)
  (+ (ad-cost an-ad) (air-cost an-ad)))

(check-expect (total-ad-cost Ad1) 3003) ;;checks the total cost of all of the ads
(check-expect (total-ad-cost Ad2) 1074.6)
(check-expect (total-ad-cost Ad3) 41)
(check-expect (total-ad-cost Ad4) 120)



;;Problem 9:

;;expensive-ads: ListOfAds Number -> ListOfAd  
;;consumes a list of ads and a Number. The function produces a list of those ads for which the total
;;ad cost exceeds the given number.

(define (expensive-ads aloa price)
  (cond [(empty? aloa) empty         ]     
        [(cons? aloa)  (if (expensive? (first aloa) price)
                           (cons (first aloa) (expensive-ads (rest aloa) price))
                           (expensive-ads (rest aloa) price))]))

(check-expect (expensive-ads empty 300) empty) ;;base case
(check-expect (expensive-ads (cons Ad3 (cons Ad1 (cons Ad4 empty))) 600) (cons Ad1 empty)) ;;checks to see if the list of ads exceeds 600 and only Ad1 does 

;;helper
;;expensive?: Ad Number -> Boolean   
;;consumes an ad and a price and returns true if the ad costs more than the given price

(define (expensive? an-ad price)
  (> (total-ad-cost an-ad) price))

(check-expect (expensive? Ad1 4000) false) ;;checks if the total cost of the ad exceeds the given price
(check-expect (expensive? Ad2 300) true) ;;checks if the total cost of the ad exceeds the given price
(check-expect (expensive? Ad3 51) false) ;;checks if the total cost of the ad exceeds the given price

