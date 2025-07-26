#lang scheme
(define (square x)(* x x))
 (square 2)
(define (squareOfBigGuys x y z)
  (cond ((and (< x y) (< x z))
         (+ (square y) (square z)))
        ((and (< y x) (< y z))
         (+ (square x) (square z)))
        (else
         (+ (square x) (square y)))))

(squareOfBigGuys  2  3 1)