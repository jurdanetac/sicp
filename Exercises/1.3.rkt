#lang sicp

; Exercise 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

; compute square of a number x
(define (square x) (* x x))

; compute sum of two numbers y and z
(define
  (sum-of-squares y z)
  (+ (square y)(square z)))

; returns largest number between a and b or undefined if equal
(define
  (largest a b)
  (cond ((> a b) a)
        ((< a b) b)))

; returns smallest number between a and b or undefined if equal
(define
  (smallest a b)
  (cond ((< a b) a)
        ((> a b) b)))

; procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger number
(define (main x y z)
  (define largest_number (largest (largest x y) z))
  (define smallest_number (smallest (smallest x y) z))
  
  ; largest_number
  ; smallest_number
)

(main 6 1 0)