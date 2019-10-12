;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Anand-Danke-hw1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;;Vandana Anand and Manasi Danke
;;vanand and mmdanke

;;Problem 1 

(define-struct film (title genre running-time opening-date total-receipts))
;;a Film is a (make-struct String String Natural Date Natural)
;;interpretation: a Film is a film being shown in the movie theater with
;;title being the title of the film
;;genre is the film's genre
;;running-time is the running time of the film in minutes
;;opening-date is the date the film opened at the theater with the year, month, and day
;;total-receipts is the total box office receipts collected so far for the film in millions of dollars

(define-struct date (year month day))
;;a Date is a (make-struct Natural Natural Natural)
;;interpretation: a Date is the date the film opened with
;;year being the year the film opened
;;month being the month the film opened
;;day being the day the film opened

;;Examples for a Film
(define JURASSIC (make-film "Jurassic World" "Thriller" 124 (make-date 2015 6 12) 1672))
(define TITANIC (make-film "Titanic" "Drama" 195 (make-date 1997 12 19) 2187))
(define INSIDEOUT (make-film "Inside Out" "Fantasy" 42 (make-date 2015 6 19) 857.6))

;;Examples for a Date
(define DATE1 (make-date 1996 8 9))
(define DATE2 (make-date 2016 7 3))
(define DATE3 (make-date 2015 6 12))

;;Problem 2

;;make-film: String String Natural Date Natural -> Film
;;make-date: Natural Natural Natural -> Date

;;Signature
;;film-title: Film -> String
;;film-genre: Film -> String
;;film-running-time: Film -> Natural
;;film-opening-date: Film -> Date
;;film-total-receipts: Film -> Natural

;;Signature
;;date-year: Date -> Natural
;;date-month: Date -> Natural
;;date-day: Date -> Natural

;;Problem 3

;;Signature: short-comedy?: Film Natural -> Boolean
;;Purpose: consumes a Film and the length in minutes. The function returns true if the film is a
;;comedy that runs for less than the given number of minutes; otherwise, the function returns false

(define (short-comedy? a-film minutes-of-film)
  (if (and(string=? (film-genre a-film) "Comedy")
        (< (film-running-time a-film) minutes-of-film))
         true
         false))
        

(check-expect (short-comedy? JURASSIC 120) false) ;Takes a movie that's not a comedy and number of minutes and produces false because it is not a comedy
(check-expect (short-comedy? JURASSIC 124) false) ;Takes a movie that's not a comedy and number of minutes and produces false because it is not a comedy and the the given number of minutes is equal to the running time of the movie
(check-expect (short-comedy? JURASSIC 130) false) ;Takes a movie that's not a comedy and number of minutes and produces false because it is not a comedy and the given number of minutes is less than the running time of the movie
(check-expect (short-comedy? (make-film "Baywatch" "Comedy" 121 (make-date 2017 5 25) 177.4) 110) false);Takes a movie that is a comedy and number of minutes and produces false because the given number of minutes is less than the running time of the movie
(check-expect (short-comedy? (make-film "Baywatch" "Comedy" 121 (make-date 2017 5 25) 177.4) 121) false);Takes a movie that is a comedy and number of minutes and produces false because the given number of minutes is equal to the running time of the movie
(check-expect (short-comedy? (make-film "Baywatch" "Comedy" 121 (make-date 2017 5 25) 177.4) 180) true);Takes a movie that is a comdey and produces true because it is both a comedy and the given number of minutes is more than the running time of the movie

;;Problem 4

;;Signature: film-with-more-receipts: Film Film -> Film
;;Purpose: consumes two Films and produces a Film. The film produced is the one with the higher number of
;;box-office receipts. If both films have the same number of receipts, the function may return either one.

(define (film-with-more-receipts film1 film2)
  (cond [(< (film-total-receipts film1) (film-total-receipts film2)) film2]
        [(> (film-total-receipts film1) (film-total-receipts film2)) film1]
        [(= (film-total-receipts film1) (film-total-receipts film2)) film1]))

(check-expect (film-with-more-receipts JURASSIC TITANIC) TITANIC) ;Takes the first film and the second film and returns the second film because it has more film receipts than film 1
(check-expect (film-with-more-receipts TITANIC INSIDEOUT) TITANIC); Takes the first film and the second film and returns the first film because it has more film receipts than film 2 
(check-expect (film-with-more-receipts (make-film "Random" "Action" 130 DATE2 857.6) INSIDEOUT) (make-film "Random" "Action" 130 DATE2 857.6)); Takes the first film and the second film and returns the first film because it is equal to the film receipts for film 2 

;;Problem 5

;;Signature: add-time-for-trailers: Film Natural -> Film
;;Purpose: consumes a Film and a number of trailers, and produces a Film. The film that is produced is
;;the same as the original except that the film's running time has been increased by 3 minutes for each
;;trailer that is shown prior to the film.

(define (add-time-for-trailers a-film number-of-trailers)
  (make-film (film-title a-film)
             (film-genre a-film)
             (+ (film-running-time a-film) (time-for-trailers number-of-trailers))
             (film-opening-date a-film)
             (film-total-receipts a-film)))

(check-expect (add-time-for-trailers TITANIC 3) (make-film "Titanic" "Drama" 204 (make-date 1997 12 19) 2187)) ;Takes a movie and number of trailers and returns the movie with the running time increased by 9 minutes for the 3 trailers
(check-expect (add-time-for-trailers (make-film "Avengers" "Action" 143 (make-date 2012 5 4) 1519) 5) (make-film "Avengers" "Action" 158 (make-date 2012 5 4) 1519));Takes a movie and number of trailers and returns the movie with the running time increased by 15 minutes for the 5 trailers
(check-expect (add-time-for-trailers INSIDEOUT 0) INSIDEOUT) ;Takes a movie and number of trailers and returns the same movie since there are no trailers

;;Helper Function
;;Signature: time-for-trailers: Natural -> Natural
;;Purpose: consumes a number of trailers which are 3 minutes long and produces the total time for trailers in a movie
(define TRAILER-LENGTH 3)

(define (time-for-trailers number-of-trailers)
  (* number-of-trailers TRAILER-LENGTH))

(check-expect (time-for-trailers 5) 15) ;Takes the 5 as the number of trailers and produces 15 minutes 
(check-expect (time-for-trailers 0) 0) ;Takes the 0 as the number of trailers and produces 0 minutes
(check-expect (time-for-trailers 10) 30) ;Takes the 10 as the number of trailers and produces 30 minutes

;;Problem 6

;;Signature: opens-before?: Film Date -> Boolean
;;Purpose: consumes a Film and a Date, and produces a Boolean. The function produces
;;true if the given film opens before the given date, and returns false otherwise

(define (opens-before? a-film a-date)
  (compare-dates? (film-opening-date a-film) a-date))

(check-expect (opens-before? JURASSIC DATE3) false) ;when the dates are the exact same
(check-expect (opens-before? (make-film "Transformers" "Action" 143 (make-date 2007 7 3) 150) (make-date 2008 9 10)) true); when the year in the first date is less than the year in the second date
(check-expect (opens-before? TITANIC DATE1) false) ;when the year in the first date is more than the year second date
(check-expect (opens-before? INSIDEOUT (make-date 2015 8 6)) true) ;when the month for the first date is less than the month in the second date
(check-expect (opens-before? (make-film "Avengers" "Action" 143 (make-date 2012 5 4) 1519) (make-date 2012 3 8)) false) ;when the month for the first date is more than the month in the second date
(check-expect (opens-before? (make-film "Random" "Action" 130 DATE2 857.6) (make-date 2016 7 16)) true) ;when the day for the first date is less than the day in the second date
(check-expect (opens-before? (make-film "Baywatch" "Comedy" 121 (make-date 2017 5 25) 177.4) (make-date 2017 3 23)) false) ;when the day for the first date is more than the day in the second date
(check-expect (opens-before? (make-film "The Bees" "Comedy" 123 (make-date 2017 9 29) 857.6) (make-date 2016 7 16)) false) ;when all parts of the first date are bigger
(check-expect (opens-before? (make-film "The Cowboys" "Adventure" 160 (make-date 2016 7 16) 857.6) (make-date 2017 9 29)) true) ;when all parts of the first date are smaller

;;Helper function:
;;Signature: compare-dates?: Date Date -> Boolean
;;Purpose: consumes two dates and produces true if the second date is after the first date and
;;produces false otherwise

(define (compare-dates? a-film-date a-date)
  (cond [(< (date-year a-film-date) (date-year a-date)) true]
        [(> (date-year a-film-date) (date-year a-date)) false]    
        [(< (date-month a-film-date) (date-month a-date)) true]
        [(> (date-month a-film-date) (date-month a-date)) false]
        [(< (date-day a-film-date) (date-day a-date)) true]
        [else false]))

(check-expect (compare-dates? DATE2 DATE3) false) ;Date2 comes after Date3
(check-expect (compare-dates? DATE1 DATE3) true) ;Date1 comes before Date3
