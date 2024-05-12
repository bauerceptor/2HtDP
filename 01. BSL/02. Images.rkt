;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02. Images|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
(require 2htdp/image)

; pakistan's flag through bsl images
(beside
 (rectangle 30 100 "solid" "white")
 (overlay
  (overlay/offset
   (overlay (star 12 "solid" "white") (circle 25 "solid" "darkgreen"))
   -8 3  (circle 25 "solid" "white"))
  (rectangle 100 100 "solid" "darkgreen")
  )
 )

; randomly generated shapes = kaleidoscope
(require math/base)

(overlay
 (radial-star (random-integer 5 30)(random-integer 10 30) (random-integer 30 100) "outline" "blue")
 (radial-star (random-integer 5 30)(random-integer 3 9) (random-integer 30 100) "outline" "red")
 (circle (random-integer 1 10)"solid" "green")
 (radial-star (random-integer 5 30)(random-integer 10 30) (random-integer 30 100) "solid" "purple")
 )
