;;Vandana Anand and Manasi Danke
;;vanand and mmdanke

;;Problem 1 

(define-struct contact (name address email))
;;a Contact is a (make-contact String String String)
;;a Contact where
;;name is the customer's name
;;address is the customer's address
;;email is the customer's email address 

(define-struct charge (busname amount))
;;a Charge is a (make-charge String Number)
;;a Charge where
;;busname is the name of the business where the credit card was used
;;amount is the amount that was charged, in dollars

;;ListOfCharge is one of:
;;empty
;;(cons Charge ListOfCharge)

;;Examples

(define Contact1 (make-contact "Carl Wong" "32 Freed Way" "cwong@gmail.com"))
(define Contact2 (make-contact "Sally Pink" "48 Utili Road" "pinks@wpi.edu"))
(define Contact3 (make-contact "Tally Simpson" "65 Wilbert Avenue" "simptal@hotmail.com"))

(define Charge1 (make-charge "Walmart" 300))
(define Charge2 (make-charge "Amazon" 1000))
(define Charge3 (make-charge "K-Mart" 1000))

(define Aloc1 (list Charge1 Charge2))
(define Aloc2 (cons (make-charge "Target" 150) (cons (make-charge "JCP" 50) (cons Charge2 empty))))
(define Aloc3 (cons (make-charge "Macy's" 210) (cons (make-charge "Stop and Shop" 25) (cons (make-charge "Shop" 37) empty))))
(define Aloc4 (list Charge2 Charge3 Charge1))

;;Problem 2

; ;;fcn-for-contact: Contact ->
; 
; (define (fcn-for-contact a-contact)
;   (... (contact-name a-contact)
;        (contact-address a-contact)
;        (contact-email a-contact)))
; 
; ;;fcn-for-charge: Charge ->
; 
; (define (fcn-for-charge a-charge)
;   (... (charge-busname a-charge)
;        (charge-amount a-charge)))
; 
; ;;fcn-for-aloc: ListOfCharge ->
; 
; (define (fcn-for-aloc aloc)
;   (cond [(empty? aloc) ... ]
;         [(cons? aloc) (fcn-for-charge (first aloc)
;                       (fcn-for-aloc (rest aloc)))]))


;;Problem 3

;; a BST is one of
;;   false
;;   CustNode

;; a CustNode is a (make-customer Natural Contact Number ListOfCharge BST BST)
(define-struct customer (card-number contact limit charges left right))
;;a CustNode where
;;card-number is the number on the credit card
;;contact is the customer's contact information
;;limit is the credit limit 
;;charges are the list of charges on the card
;;left is left branch of the tree    
;;right is the right branch of the tree

;;INVARIANT
;;left is the root of the tree representing the left branch of the tree where all the credit card numbers are less than the root node     
;;right is the root of the tree representing the right branch of the tree where all the credit card numbers are more than the root node
;;all nodes must be unique meaning no node can be the same 

;;a CustNode is one of:
;;false
;;(make-customer Natural Contact Number ListOfCharge BST BST)

;;Problem 4

(define BST1 (make-customer 100 Contact1 3000 Aloc1
                            (make-customer 50 Contact2 2000 Aloc2
                                           (make-customer 25 Contact3 3500 Aloc2 false false) false)
                            (make-customer 200 (make-contact "Susan Piet" "60 Yoili Avenue" "piets@neu.edu") 1000 Aloc3 false
                                           (make-customer 205 (make-contact "Fityo Chang" "35 Lemay Way" "changf@colu.edu") 1500 Aloc1 false false))))

(define BST2 (make-customer 126 Contact2 3000 Aloc1
                            (make-customer 43 (make-contact "Didi Dong" "59 Yout Way" "didid@col.com") 1000 Aloc4 
                                           (make-customer 26 (make-contact "Hercules Google" "46 Chant Road" "changf@BU.net") 1500 Aloc4 false false) false)
                            (make-customer 151 Contact3 1200 Aloc2 false
                                           (make-customer 162 Contact1 2200 Aloc4 false false))))
;;Problem 5

; ;;fcn-for-custnode: CustNode ->
; 
; (define (fcn-for-custnode acn)
;   (cond [(boolean? acn) (...)]
;         [(customer? acn) (... (customer-card-number acn)
;                               (fcn-for-contact(customer-contact acn))
;                               (customer-limit acn)
;                               (fcn-for-aloc(customer-charges acn))
;                               (fcn-for-custnode (customer-left acn))
;                               (fcn-for-custnode (customer-right acn)))]))


;;Problem 6
;;count-big-limits: BST Number -> Natural 
;;consumes a binary search tree and a credit limit amount, and counts the number of customers in the
;;tree who have a credit limit higher than the given amount.

(define (count-big-limits acn credit-limit)
  (cond [(boolean? acn) 0]
        [(customer? acn) (if (> (customer-limit acn) credit-limit)
                            (+ 1
                              (count-big-limits (customer-left acn) credit-limit)
                              (count-big-limits (customer-right acn) credit-limit))
                            (+ 0
                              (count-big-limits (customer-left acn) credit-limit)
                              (count-big-limits (customer-right acn) credit-limit)))]))

(check-expect (count-big-limits false 1000) 0) ;;base case
(check-expect (count-big-limits BST1 4000) 0) ;;No one in the tree has credit limit higher than the given credit limit
(check-expect (count-big-limits BST1 200) 5) ;;Everyone in the tree has credit limit higher than the given credit limit

;;Problem 7
;;any-over-limit?: BST -> Boolean
;;consumes a binary search tree and produces true if any customer in the tree has an outstanding
;;balance greater than their credit limit

(define (any-over-limit? acn)
  (cond [(boolean? acn) false]
        [(customer? acn) (if(< (customer-limit acn) (cust-balances (customer-charges acn)))
                              true
                              (or (any-over-limit? (customer-left acn))
                                  (any-over-limit? (customer-right acn))))]))

(check-expect (any-over-limit? false) false) ;;base case
(check-expect (any-over-limit? BST1) false) ;;No one has outstanding balances
(check-expect (any-over-limit? BST2) true) ;;3 people have outstanding balances

;;Helper Function
;;cust-balances: ListOfCharge -> Natural
;;consumes a list of charges and produces the total amount of charges

(define (cust-balances aloc)
  (cond [(empty? aloc) 0 ]
        [(cons? aloc) (+ (cust-charge (first aloc))
                      (cust-balances (rest aloc)))]))

(check-expect (cust-balances empty) 0) ;;base case
(check-expect (cust-balances Aloc1) 1300) ;;Adds charges of the list given 
(check-expect (cust-balances Aloc2) 1200)
(check-expect (cust-balances Aloc3) 272)
(check-expect (cust-balances Aloc4) 2300)

;;Helper Function
;;cust-charge: Charge -> Natural
;;consumes a charge and produces the amount charged
(define (cust-charge a-charge)
  (charge-amount a-charge))

(check-expect (cust-charge Charge1) 300) ;;produces the amount of charge 
(check-expect (cust-charge Charge2) 1000)
(check-expect (cust-charge Charge3) 1000)

;;Problem 8
;;increase-limit: BST Number Number -> BST
;;consumes a binary search tree, a credit card number, and an amount of money. The function returns a
;;tree the same as the original, except that the credit limit of the customer with the given credit
;;card number has been increased by the given amount

(define (increase-limit acn card-num amt)
  (cond [(boolean? acn) false]
        [(customer? acn) (if (= (customer-card-number acn) card-num)

         (make-customer (customer-card-number acn)
                        (customer-contact acn)
                        (+ (customer-limit acn) amt)
                        (customer-charges acn)
                        (customer-left acn)
                        (customer-right acn))
         
         (make-customer (customer-card-number acn)
                        (customer-contact acn)
                        (customer-limit acn)
                        (customer-charges acn)
                        (increase-limit (customer-left acn) card-num amt)
                        (increase-limit (customer-right acn) card-num amt)))]))


(check-expect (increase-limit false 234 675) false) ;;base case
(check-expect (increase-limit BST1 234 457) BST1) ;;no customer with given credit card number
(check-expect (increase-limit BST1 100 104) (make-customer 100 Contact1 3104 Aloc1
                            (make-customer 50 Contact2 2000 Aloc2
                                           (make-customer 25 Contact3 3500 Aloc2 false false) false)
                            (make-customer 200 (make-contact "Susan Piet" "60 Yoili Avenue" "piets@neu.edu") 1000 Aloc3 false
                                           (make-customer 205 (make-contact "Fityo Chang" "35 Lemay Way" "changf@colu.edu") 1500 Aloc1 false false)))) ;;change credit limit for first person in tree
(check-expect (increase-limit BST2 162 1534) (make-customer 126 Contact2 3000 Aloc1
                            (make-customer 43 (make-contact "Didi Dong" "59 Yout Way" "didid@col.com") 1000 Aloc4 
                                           (make-customer 26 (make-contact "Hercules Google" "46 Chant Road" "changf@BU.net") 1500 Aloc4 false false) false)
                            (make-customer 151 Contact3 1200 Aloc2 false
                                           (make-customer 162 Contact1 3734 Aloc4 false false)))) ;;change credit limit for last person on the right side of the tree

;;Problem 9
;;add-customer: BST Number Contact -> BST
;;consumes a binary search tree, a credit card number, and a customer's contact information. The
;;function returns a tree with a new customer added.

(define (add-customer acn credit-num contact-info)
  (cond [(boolean? acn) (make-customer credit-num contact-info 25000 empty false false)]
        [(customer? acn) (if (< credit-num (customer-card-number acn))
                             
               (make-customer (customer-card-number acn)
                              (customer-contact acn)
                              (customer-limit acn)
                              (customer-charges acn)
                              (add-customer (customer-left acn) credit-num contact-info)
                              (customer-right acn))

               (make-customer (customer-card-number acn)
                              (customer-contact acn)
                              (customer-limit acn)
                              (customer-charges acn)
                              (customer-left acn)
                              (add-customer (customer-right acn) credit-num contact-info)))]))
         

(check-expect (add-customer false 234 Contact1) (make-customer 234 Contact1 25000 empty false false)) ;;base case
(check-expect (add-customer BST1 234 (make-contact "Goog Foul" "98 Lima Street" "fgoog@cloud.net")) (make-customer 100 Contact1 3000 Aloc1
                            (make-customer 50 Contact2 2000 Aloc2
                                           (make-customer 25 Contact3 3500 Aloc2 false false) false)
                            (make-customer 200 (make-contact "Susan Piet" "60 Yoili Avenue" "piets@neu.edu") 1000 Aloc3 false
                                           (make-customer 205 (make-contact "Fityo Chang" "35 Lemay Way" "changf@colu.edu") 1500 Aloc1 false
                                                          (make-customer 234 (make-contact "Goog Foul" "98 Lima Street" "fgoog@cloud.net") 25000 empty false false))))) ;;adds the customer to teh right branch

(check-expect (add-customer BST2 25 (make-contact "Jake Paul" "98 Jadobi Way" "jake.paul@cgmail.com")) (make-customer 126 Contact2 3000 Aloc1
                            (make-customer 43 (make-contact "Didi Dong" "59 Yout Way" "didid@col.com") 1000 Aloc4 
                                           (make-customer 26 (make-contact "Hercules Google" "46 Chant Road" "changf@BU.net") 1500 Aloc4
                                                          (make-customer 25 (make-contact "Jake Paul" "98 Jadobi Way" "jake.paul@cgmail.com") 25000 empty false false) false) false) ;;adds the customer to the left branch
                            (make-customer 151 Contact3 1200 Aloc2 false
                                           (make-customer 162 Contact1 2200 Aloc4 false false)))) 

