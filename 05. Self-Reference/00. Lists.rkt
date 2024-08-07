;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |00. Lists|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;; Presenting arbitrary sized data with Lists
;; -> cons is like a two-argument constructor

empty                                                    ; a list with no elements
(define L1 (cons "Flames" empty))                        ; a list of 1 element
(define L2 (cons 10 (cons 9 empty)))                     ; a list of 2 elements

(require 2htdp/image)
(define L3 (cons (square 20 "solid" "blue")              ; a list of 3 images
      (cons (triangle 20 "outline" "green")
            (cons (circle 10 "solid" "orange")
                  empty))))


;; Primitives for lists
;; -> first selects the first element of a list

(first L1)                                   ; first consumes a list with at least one elemenet
(first L2)                                   ; and produces the first element of that list
(first L3)

;; -> rests selects the elements of a list other than first

(rest L1)                                   ; rest consumes a list with at least one elemenet
(rest L2)                                   ; and produces the list after the first element
(rest L3)

;; -> empty? returns a boolean as to whether the list is empty or not
(empty? empty)        ;true
(empty? L1)           ;false

 
;; How to get second element of L3?
(first (rest L3))
(first (rest (rest L3)))             ; this gets the third element of L3