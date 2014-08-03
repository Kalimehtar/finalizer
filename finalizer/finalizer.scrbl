#lang scribble/manual

@(require (for-label racket finalizer))

@title{Finalizer: trivial finalization}
@author{@(author+email "Roman Klochkov" "kalimehtar@mail.ru")}

@(defmodule finalizer)

@defproc[(register-finalizer [object any/c] [proc (any/c . -> . any)]) void?]{
Register finalize @racket[_proc], that will be called, when @racket[_object] is
garbage collected. More details about @racket[_proc] see in the description 
of @racket[will-register].}
