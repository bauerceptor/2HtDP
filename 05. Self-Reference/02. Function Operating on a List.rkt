;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02. Function Operating on a List|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;; A program to keep track of favorite teams


;; ListOfString is one of:
;;  - empty
;;  - (cons String ListOfString)             ;self-reference

;; interp. a list of strings

(define LOS1 empty)
(define LOS2 (cons "McGill" empty))
(define LOS3 (cons "UBC" (cons "McGill" empty)))

#;
(define (fn-for-los los)
  (cond [(empty? los) (...)]
        [else
         (... (first los)                         ;String
              (fn-for-los (rest los)))]))         ;ListOfString

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: empty
;;  - compound: (cons String ListOfString)

