#lang racket/base
(require racket/contract)
(provide/contract 
 [register-finalizer (-> any/c (-> any/c any) any)])

(define will (make-will-executor))

(define (register-finalizer obj proc)
  (will-register will obj proc))

(void (thread (λ () (let loop () (will-execute will) (loop)))))
