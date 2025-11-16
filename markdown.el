(use-package markdown-mode
  :ensure t

  :custom-face
  (markdown-header-face-1 ((t (:height 1.50 :inherit variable-pitch))))
  (markdown-header-face-2 ((t (:height 1.35 :inherit variable-pitch))))
  ;; TODO: Figure out good heights for markdown-header-face-{3,4,5,6}.
  (markdown-header-face-3 ((t (:inherit variable-pitch))))
  (markdown-header-face-4 ((t (:inherit variable-pitch))))
  (markdown-header-face-5 ((t (:inherit variable-pitch))))
  (markdown-header-face-6 ((t (:inherit variable-pitch))))
  (markdown-blockquote-face ((t (:background "beige" :extend t))))

  :custom
  (fill-column 78)

  ;; Prefer Powerline-style angle bracket.
  (markdown-blockquote-display-char   '("" "❯" "›" ">"))
  (markdown-enable-highlighting-syntax t)

  ;; _Italic_, not *italic*.
  (markdown-bold-underscore   nil)
  (markdown-italic-underscore t))
