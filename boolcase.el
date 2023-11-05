;;; boolcase.el -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Ben Lim
;;
;; Author: Ben Lim <lim6112j@gmail.com>
;; Maintainer: Ben Lim <lim6112j@gmail.com>
;; Created: November 05, 2023
;; Modified: November 05, 2023
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/codeguru/boolcase
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:
;;;  참조
;;https://www.youtube.com/watch?v=QaX3AaK3_Lk&list=PL1U4NsGzju92WWGlyHbGS1uZKIoERY07L&index=5
(defvar boolcase-mode-words '("true" "false")
  "Words to capitalize")
(defun boolcase-mode-check ()
  "Check if we capitalize or not"
  ;; it it's "e"
  (if (= last-command-event 101)
      (boolcase-mode-fix)))
(defun boolcase-mode-fix ()
  (save-excursion
    (copy-region-as-kill (point) (progn (backward-sexp) (point)))
    (when (member (current-kill 0) boolcase-mode-words)
      (capitalize-word 1))
    (setq kill-ring (cdr kill-ring))))
(define-minor-mode boolcase-mode
  "automatically capitalze booleans"
  :lighter " BC"
  (if boolcase-mode
      (add-hook 'post-self-insert-hook
                'boolcase-mode-check nil t)
    (remove-hook 'post-self-insert-hook
                 'boolcase-mode-check t)))
;;; boolcase.el ends here
