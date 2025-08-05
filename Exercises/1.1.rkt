#lang sicp

; Exercise 1.1: Below is a sequence of expressions. What is
; the result printed by the interpreter in response to each ex-
; pression? Assume that the sequence is to be evaluated in
; the order in which it is presented.

10 ; 10

(+ 5 3 4) ; 12

(- 9 1) ; 8

(/ 6 2) ; 3

(+ (* 2 4) (- 4 6)) ; 10 (correct 6, it's 4 - 6 not the other way around)

(define a 3) ; nothing

(define b (+ a 1)) ; b (correct nothing, it's not a procedure definition)

(+ a b (* a b)) ; 19

(= a b) ; #f

(if (and (> b a) (< b (* a b))) ; 4
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; 16

(+ 2 (if (> b a) b a)) ; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; 16