(require 'package)

(when (< emacs-major-version 27)
  (package-initialize))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") :append)

(unless (require 'use-package nil :no-error)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package-ensure
  :custom (use-package-always-ensure t))

(setq backup-inhibited t)               ; TODO: Actually fix backing up.

(use-package magit
  :bind ("<f12>" . magit-status))

;; Probably not going to fret about fixing up `TeX-open-quote' and
;; `TeX-close-quote' for ConTeXt.  Rather than syntactical sugar,
;; ConTeXt would rather us use \quotation{} and \quote{} for outer and
;; inner quotes.  As of my dive in ConTeXt's souce, this is to utilize
;; language-specific rules, such as curly quotes (“ and ”) in English.
;;
;; Related: https://wiki.contextgarden.net/Command/setuplanguage

(use-package tex
  :ensure auctex
  :custom
  (ConTeXt-Mark-version "IV" "For some reason AucTeX defaults to MkII"))
