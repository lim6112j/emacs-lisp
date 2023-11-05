;;; package --- Summary
;;; move-line.el -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Ben Lim
;;
;; Author: Ben Lim <lim6112j@gmail.com>
;; Maintainer: Ben Lim <lim6112j@gmail.com>
;; Created: July 01, 2022
;; Modified: July 01, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/codeguru/move-line
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;; nothing
;;
;;
;;; Code:
;;

(define-key evil-normal-state-map (kbd "s-k") #'drag-stuff-up)

(define-key evil-normal-state-map (kbd "s-j") #'drag-stuff-down)

(provide 'move-line)
;;; move-line.el ends here
