#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(sqrt-iter 2 9)