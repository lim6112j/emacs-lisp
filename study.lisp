";;; package --- Summary"
";;; Commentary: test"
(+ 1 2)
; printing
(message "hi")
(message "her age is %d" 16)
(message "her nae is %s" "vicky")
(message "my ist is %S" (list 4 5 6))
(integerp 3.)
(floatp 3.0)
(float 3)
(truncate 3.0)
(floor 3.0)
(string-to-number "3")
(if nil "yes" "no")
(if () "yes" "no")
(if '() "yes" "no")
(if (list) "yes" "no")

(if t "yes" "no")
(if 0 "yes" "no")
(if [] "yes" "no")
(if "" "yes" "no")

(and t nil)
(or t nil)
(and t nil nil nil)

(< 3 4)
(= 3 4)
(= 3 3.00000000000000001)

(equal "abc" "abc")
(string-equal "abc" "abc")

(= (% 4 2) 0)
; global variable
(setq x 1)
(setq a 1 b 2 c 3)
(print a)
; local variable
(let (a b)
  (setq a 1)
  (setq b 3)
  (+ a b)
)

(progn (message "hi") (message "world"))

;loop
(setq x 0)
(while (< x 4)
  (print (format "number is %d" x))
  (setq x (1+ x)))

(let ((x 32))
  (while (< x 127)
    (insert-char x)
    (setq x (+ x 1))))

(defun myFunction()
  "message"
  (message "hello world"))

(defun yay ()
  "Insert "yay!" at the cursor position"
  (interactive)
  (insert "Yay!"))
