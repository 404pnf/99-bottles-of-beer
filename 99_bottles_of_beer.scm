(define drink-all-the-beer!! ; Start singing!
  (lambda ()
    (we-still-got-loads! 99)))

(define we-still-got-loads!
  (lambda (beer)
    (start-downing-one!)
    (how-many-bottles?! beer)
    (how-many-again?! beer)
    (cond
      ((no-more-beer...? beer)
       (buy-more!!!)
       (how-many-we-got?! 99))
      (else
        (drink-it!)
        (how-many-left?! (just-downed-one! beer))
        (we-still-got-loads! (just-downed-one! beer))))))

(define how-many-bottles?!
  (lambda (beer)
    (sing! (slurrr (i-can-count beer) " bottles of beer on the wall"))))

(define how-many-again?!
  (lambda (beer)
    (sing! (slurrr (i-can-count beer) " bottles of beer"))))

(define buy-more!!!
  (lambda ()
    (sing! "Go to the store and buy some more")))

(define drink-it!
  (lambda ()
    (sing! "Grab one down and pass it around")))

(define how-many-we-got?! how-many-bottles?!)
(define how-many-left?! how-many-bottles?!)

(define sing!
  (lambda (drunken-line)
    (splurt. (slurrr drunken-line (breathe)))))

(define breathe (lambda () "\n"))
(define just-downed-one! (lambda (beer) (down-it! beer 1)))

(define start-downing-one! newline)
(define i-can-count number->string)
(define slurrr string-append)
(define splurt. display)
(define no-more-beer...? zero?)
(define down-it! -)
