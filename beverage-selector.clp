(defrule p1
?p <- (start)
  =>
  (printout t "Do you want a carbonated drink?(yes/no)" crlf)
  (assert (carbonated (read)))
  (retract ?p))

(defrule p2
  (carbonated yes)
  =>
  (printout t "Do you want caffeine?(yes/no)" crlf)
  (assert (caffeine (read))))
 
(defrule p3
  (carbonated yes)
  (caffeine yes)
  =>
  (printout t "Do you want a diet drink?(yes/no)" crlf)
  (assert (diet (read))))
 
(defrule rule1
  (carbonated yes)
  (caffeine yes)
  (diet yes)
  =>
  (printout t "I recommend a sugar free cola." crlf))
 
(defrule rule2
  (carbonated yes)
  (caffeine yes)
  (diet no)
  =>
  (printout t "I recommend a regular cola." crlf))

(defrule p4
  (carbonated yes)
  (caffeine no)
  =>
  (printout t "Do you want a digist carbonated drink?(yes/no)" crlf)
  (assert (digest  (read))))

(defrule rule3
  (carbonated yes)
  (caffeine no)
  (digest  no)
  =>
  (printout t "I recommend a soda" crlf))
  
(defrule p5
  (carbonated yes)
  (caffeine no)
  (digest  yes)
  =>
  (printout t "Do you want a orage falovred drink?(yes/no)" crlf)
  (assert (orange (read))))

(defrule rule4
  (carbonated yes)
  (caffeine no)
  (digest  yes)
  (orange yes)
  =>
  (printout t "I recommend an orange crush" crlf))

(defrule rule5
  (carbonated yes)
  (caffeine no)
  (digest yes)
  (orange no)
  =>
  (printout t "I recommend a lemonade" crlf))

(defrule p6
  (carbonated no) 
  =>
  (printout t "Do you want a nuritous drink?(yes/no)" crlf)
  (assert (nutritious (read))))
  
(defrule p7
  (carbonated no)
  (nutritious yes)
  =>
  (printout t "Do you want a cold drink?(yes/no)" crlf)
  (assert (cold (read))))

(defrule rule6
  (carbonated no)
  (nutritious yes)
  (cold no)
  =>
  (printout t "I recommend a Green tea." crlf))

(defrule rule7
  (carbonated no)
  (nutritious yes)
  (cold yes)
  =>
  (printout t "I recommend a yoghurt drink." crlf))

(defrule rule8
  (carbonated no)
  (nutritious no)
  =>
  (printout t "I recommend an apple cider." crlf))

(deffacts startup
  (start))

  














