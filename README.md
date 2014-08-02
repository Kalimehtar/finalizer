finalizer
=========

Common trivial finalizer for Racket

Usage:

```racket
(require finalizer)
(define a-box (box #f))
(register-finalizer a-box
                    (λ (x) (printf "a-box is now garbage\n")))
(collect-garbage) (collect-garbage) (collect-garbage)
(printf "breaking the link\n")
(set! a-box #f)
(collect-garbage) (collect-garbage) (collect-garbage)
```
