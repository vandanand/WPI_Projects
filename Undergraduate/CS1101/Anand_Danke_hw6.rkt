;;Vandana Anand and Manasi Danke
;;vanand and mmdanke

;; a TimeOfDay is one of
;;   "daytime"
;;   "primetime"
;;   "off-hour"


(define-struct ad (name duration production-cost national? time-of-day repetitions))
;; an Ad is a (make-ad String Natural Number Boolean TimeOfDay Natural)
;; interp:  a television ad, where
;;          name is the name of the product the ad is for
;;          duration is the length of the ad (in seconds)
;;          production-cost is the cost to produce the ad (in thousands of dollars)
;;          national? is true if the ad is to be aired nationally (false if locally)
;;          time-of-day is the time of day that the ad airs
;;          repetitions is the number of times the ad is to be played

;; a ListOfAd is one of
;;   empty
;;   (cons Ad ListOfAd)

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

;;Problem 1
;;count-long-primetime: ListofAd Natural -> Natural
;;consumes a list of ads and a length of time and produces the number of ads in the list that air in runtime
;;and that run for more than the given number of seconds.

(define (count-long-primetime aloa ad-length)
  (local [(define (long? an-ad)
           (and (> (ad-duration an-ad) ad-length)
                (string=? (ad-time-of-day an-ad) "primetime")))]          
 (length (filter long? aloa))))

(check-expect (count-long-primetime empty 400) 0) ;; base case
(check-expect (count-long-primetime Aloa2 130) 1) ;; Takes a list and prodcues 1 ad that meets both qualifications
(check-expect (count-long-primetime Aloa1 300) 0) ;; None of the ads meet the qualifications
(check-expect (count-long-primetime (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Nick" 120 7 true "off-hour" 9) (cons Ad4 empty)))  100) 2) ;;Ads either meet both of the expectations or doesn't meet one out of the 2

;;Problem 2
;;national-ads: ListOfAds -> ListOfAds
;;consumes a list of ads and produces a list of all the ads airing nationally.

(define (national-ads aloa)
  (filter ad-national? aloa))

(check-expect (national-ads empty) empty) ;;base case
(check-expect (national-ads Aloa4) Aloa4) ;;return same list since all ads are national
(check-expect (national-ads (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Nick" 120 7 true "primetime" 9) (cons Ad4 (cons (make-ad "Chuck" 60 2 true "daytime" 15) empty))))) (cons (make-ad "Nick" 120 7 true "primetime" 9) (cons (make-ad "Chuck" 60 2 true "daytime" 15) empty))) ;;produces list of ads being nationally aired       

;;Problem 3
;;late-night-products: ListOfAd -> ListOfString
;;consumes a list of ads and produces a list of strings. The list that is produced contains the names
;;of the products that are advertised during the off-hours.

 (define (late-night-products aloa)
   (local [(define (off-hours? an-ad)
             (string=? (ad-time-of-day an-ad) "off-hour"))]
   (map ad-name (filter off-hours? aloa))))

(check-expect (late-night-products empty) empty) ;;base case
(check-expect (late-night-products Aloa1) (cons "Trump" empty)) ;;one ad is an off-hour
(check-expect (late-night-products Aloa5) (cons "Biden" (cons "Trump" (cons "Mill" empty)))) ;;three ads are off-hours
(check-expect (late-night-products (cons (make-ad "Kevin" 130 8 false "primetime" 9) (cons (make-ad "Marley" 130 8 false "daytime" 9) empty))) empty) ;;none are off-hours

;;Problem 4
;;adjust-for-inflation: ListOfAd -> ListOfAd
;;consumes a list of ads and produces a list where the production cost for each ad in the list has increased
;;by 1%.

(define (adjust-for-inflation aloa)
  (local [(define (increase-prod an-ad)
            (make-ad (ad-name an-ad)
                     (ad-duration an-ad)
            (+ (* (ad-production-cost an-ad) 0.01) (ad-production-cost an-ad))
                     (ad-national? an-ad)
                     (ad-time-of-day an-ad)
                     (ad-repetitions an-ad)))]
  (map increase-prod aloa)))

(check-expect (adjust-for-inflation empty) empty) ;;base case
(check-expect (adjust-for-inflation Aloa1) (list (make-ad "Trump" 180 3.03 true "off-hour" 10)
                                                        (make-ad "Obama" 100 8.08 true "daytime" 4)
                                                        (make-ad "Clinton" 200 10.1 false "primetime" 1))) ;;adds 1 percent to prod cost of pre-defined list
(check-expect (adjust-for-inflation (cons Ad4 (cons (make-ad "Hillary" 345 50 false "primetime" 1) (cons Ad2 (cons Ad3 (cons (make-ad "Kevin" 130 80 false "primetime" 9) empty)))))) ;;adds 1 percent to prod cost of non-pre-defined list 
                                    (list (make-ad "Kelly" 230 5.05 false "primetime" 3)
                                          (make-ad "Hillary" 345 50.5 false "primetime" 1)
                                          (make-ad "Obama" 100 8.08 true "daytime" 4)
                                          (make-ad "Biden" 210 6.06 false "off-hour" 2)
                                          (make-ad "Kevin" 130 80.8 false "primetime" 9)))

;;Problem 5

(define-struct user (username messages))
;;a User is a (make-user String ListOfMessage)
;;a User with
;;username being the email id of the user
;;message being the messages in the user's mailbox

(define User1 (make-user "Ashley" empty))  

(define-struct message (user text flag?))
;;a Message is a (make-message User String Boolean)
;;a Message with
;;user being the sender of the message
;;text being the text of the message
;;flag indicates whether or not the user has read the message

;;ListOfUsers is one of
;;empty
;;(cons User ListOfUser)

(define Userlist1 (list (make-user "Sam" empty)
                        (make-user "Harry" empty)
                        (make-user "Leo" empty)))

;;ListOfMessage is one of
;;empty
;;(cons Message ListOfMessage)

(define Messagelist1 (list (make-message (make-user "Susan" empty) "Hey!" true)
                           (make-message (make-user "Brooke" empty) "at 11pm" false)
                           (make-message User1 "I'll be there soon :)" false)))

(define mailsys empty)
;;mailsys being a mailsystem which consists of a list of users

;;Problem 6

;;add-user: String -> void 
;;consumes a username and produces void.
;;EFFECT: add a new user with the given username to the mail system.

(define (add-user username)
  (set! mailsys (cons (make-user username empty) mailsys)))

;;Problem 7

;;send-email: String String String -> void
;;consumes the name of the sender of an email, the name of the recipient of the email, and the text of an
;;email message, and produces void.
;;EFFECT: to store a new unread message in the recipient's mailbox.

(define (send-email sender recip text)
  (set-user-messages! (find-user recip mailsys)
                      (cons (make-message (find-user sender mailsys) text false)
                            (user-messages (find-user recip mailsys)))))

;;find-user: String ListOfUser -> User
(define (find-user username alou)
  (cond [(empty? alou) (error "No such user found")]
        [(cons? alou) (if (string=? username (user-username (first alou)))
                          (first alou)
                          (find-user username (rest alou)))]))

;(check-expect (find-user "Arthur" Userlist1)  "No such user found")
(check-expect (find-user "Sam" Userlist1) (make-user "Sam" empty))
(check-expect (find-user "Leo" Userlist1) (make-user "Leo" empty))
  

;;Problem 8

;;get-unread-messages-and-mark-read: String -> ListOfMessages
;;consumes a username and produces a list of messages. The produced list contains the (previously) unread
;;messages in the mailbox of the user with the given name.
;;EFFECT: all unread messages in the named user's mailbox have been set to read.

(define a-user-alom empty)

(define (get-unread-messages-and-mark-read username)
  (local [(define (get-unread-messages-and-mark-read username alom)
            (begin (set! a-user-alom alom)
            (cond [(empty? a-user-alom) empty]
                  [(cons? a-user-alom)
                   (if (not (message-flag? (first a-user-alom)))
                       (begin (set-message-flag?! (first a-user-alom) true)
                              (cons (first a-user-alom) (get-unread-messages-and-mark-read username (rest a-user-alom))))
                       (get-unread-messages-and-mark-read username (rest a-user-alom)))])))]
    (get-unread-messages-and-mark-read username (user-messages (find-user username mailsys)))))

;;Problem 9

;;most-messages: nothing -> User
;;doesn't consume anything. The function produces the user in the mailsystem with the largest number of
;;messages in his/her mailbox. If there are no users in the system, the function produces an appropriate
;;error. If two or more users have the most messages, the function just needs to return one of them.
(define var (make-user "user" empty))

(define (most-messages)
  (begin (set! var (find-user-with-most-messages mailsys))
         var))

;;find-user-with-most-messages: ListOfUser -> User
;;consumes a list of users adn produces the user with the most messages

(define (find-user-with-most-messages alou)
  (cond [(empty? alou) (error "User not found")]
        [(cons? alou) (local [(define (find-user-with-most-messages alou acc)
                                (cond [(empty? alou) acc]
                                      [(cons? alou) (find-user-with-most-messages (rest alou)
                                                    (user-has-more (first alou) acc))]))]
                        (find-user-with-most-messages alou (first alou)))]))

(check-expect (find-user-with-most-messages (list (make-user "Lila" (list (make-message (make-user "Bob" empty) "Hello!" true)))
                                                  (make-user "Jim" (list (make-message (make-user "Bob" empty) "Hello!" true)
                                                     (make-message (make-user "Kylie" empty) "See you then!" true)
                                                     (make-message (make-user "Kim" empty) "It's at 5pm today" false)))
                                                  User1)) (make-user "Jim" (list (make-message (make-user "Bob" empty) "Hello!" true)
                                                     (make-message (make-user "Kylie" empty) "See you then!" true)
                                                     (make-message (make-user "Kim" empty) "It's at 5pm today" false))))

;;user-has-more: User User -> User
;;consumes two users adn produces the user that has the most messages

(define (user-has-more u1 u2)
  (if (>= (length (user-messages u1)) (length (user-messages u2)))
      u1
      u2))

;;returns user 2 since they have more messages
(check-expect (user-has-more (make-user "Lila" (list (make-message (make-user "Bob" empty) "Hello!" true)))
                             (make-user "Jim" (list (make-message (make-user "Kyle" empty) "See you later" false)
                                                    (make-message (make-user "Kylie" empty) "See you then!" true)))) (make-user "Jim" (list (make-message (make-user "Kyle" empty) "See you later" false)
                                                    (make-message (make-user "Kylie" empty) "See you then!" true))))
;;returns user 1 since they have more messages
(check-expect (user-has-more (make-user "Lila" (list (make-message (make-user "Bob" empty) "Hello!" true)
                                                     (make-message (make-user "Kylie" empty) "See you then!" true)
                                                     (make-message (make-user "Kim" empty) "It's at 5pm today" false)))
                             (make-user "Jim" (list (make-message (make-user "Kyle" empty) "See you later" false)))) (make-user "Lila" (list (make-message (make-user "Bob" empty) "Hello!" true)
                                                     (make-message (make-user "Kylie" empty) "See you then!" true)
                                                     (make-message (make-user "Kim" empty) "It's at 5pm today" false)))) 
;;checks when both users have same amount of messages
(check-expect (user-has-more (make-user "Lila" (list (make-message (make-user "Bob" empty) "Hello!" true)
                                                     (make-message (make-user "Kylie" empty) "See you then!" true)))
                             (make-user "Jim" (list (make-message (make-user "Kyle" empty) "See you later" false)
                                                    (make-message (make-user "Kim" empty) "It's at 5pm today" false)))) (make-user "Lila" (list (make-message (make-user "Bob" empty) "Hello!" true)
                                                     (make-message (make-user "Kylie" empty) "See you then!" true))))
;;Problem 10

;;Test cases

;;test add-user
"check contents of mailsys"
mailsys
"add new user to mailsys"
(add-user "Ashley")
"check contents of mailsys to see new user"
mailsys
"add new user to mailsys"
(add-user "Susan")
"check contents of mailsys to see new user"
mailsys
"add new user to mailsys"
(add-user "Peter")
"check contents of mailsys to see new user"
mailsys

;;test send-mail
"send a message from Ashley to Susan"
(send-email "Ashley" "Susan" "Hey! Come over to study!")
"show Susan has new message"
mailsys
"send a mssage from Susan to Peter"
(send-email "Susan" "Peter" "The homework is due tomorrow")
"show Peter has new message"
mailsys
"send a message from Peter to Susan"
(send-email "Peter" "Susan" "There's a party tonight!")
"show that Susan has new message"
mailsys
; "send message from Jose to John"
; (send-email "Jose" "John" "There's a party tonight!")
; "show the error because no such users in mailsys"
; mailsys


;;test get-unread-messages-and-mark-read
"show user in mailsys with unread email"
(get-unread-messages-and-mark-read "Susan")
"show user in mailsys with unread email"
(get-unread-messages-and-mark-read "Peter")
"show user in mailsys with read email"
(get-unread-messages-and-mark-read "Ashley")

;;test most-messages
"show the contents of mailsys"
mailsys
"show the correct user that has the most messages"
(most-messages)
