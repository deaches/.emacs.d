(require 'package)

(when (< emacs-major-version 27)
  (package-initialize))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") :append)

(unless (require 'use-package nil :no-error)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package-ensure
  :custom (use-package-always-ensure t))

(use-package magit
  :bind ("<f12>" . magit-status))
