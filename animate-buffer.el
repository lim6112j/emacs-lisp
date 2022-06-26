;;; animate-buffer.el --- animation current buffer -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Ben Lim
;;
;; Author: Ben Lim <lim6112j@gmail.com>
;; Maintainer: Ben Lim <lim6112j@gmail.com>
;; Created: June 26, 2022
;; Modified: June 26, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/codeguru/animate-buffer
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(load-file "./modified-animate.el")
(defun animate-buffer ()
  (interactive)
  (setq contents (buffer-string))
  (setq space 0)
  (setq list-of-strings (split-string contents "\n"))
  (animate-sequence list-of-strings space))
(animate-buffer)
(provide 'animate-buffer)
;;; animate-buffer.el ends here
