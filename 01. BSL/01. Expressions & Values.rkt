;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01. Expressions & Values|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
; here we evaluate the hypontuse of a triangle with base 4 and perpendicular 3
(sqrt(+ (sqr 4) (sqr 3)))


; a simple image program
(require 2htdp/image)

(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))