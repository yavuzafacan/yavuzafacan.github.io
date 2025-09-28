;;; publish.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025 Yavuz Afacan
;;
;; Author: Yavuz Afacan <yavuzafacan@Mac>
;; Maintainer: Yavuz Afacan <yavuzafacan@Mac>
;; Created: September 27, 2025
;; Modified: September 27, 2025
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
;; Homepage: https://github.com/yavuzafacan/publish
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

;; -*- mode: emacs-lisp; lexical-binding: t; -*-

;; publish.el (replace the head settings)
;; -*- mode: emacs-lisp; lexical-binding: t; -*-
;; -*- mode: emacs-lisp; lexical-binding: t; -*-
(require 'ox-publish)

;; disable default styles/scripts
(setq org-html-head-include-default-style nil)
(setq org-html-head-include-scripts nil)

;; inject only Times New Roman font
(setq org-html-head
      "<style>
body {
  font-family: 'Times New Roman', Times, serif;
}
h1, h2, h3, h4, h5, h6 {
  color: inherit;
  text-decoration: none;
  font-weight: bold;
}
</style>")

;; disable table of contents and section numbering
(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

;; footer
(setq org-html-postamble-format
      '(("en" "<p class=\"footer\">y.s.a, updated: %C</p>")))
(setq org-html-postamble t)
(setq org-export-with-author nil)
(setq org-export-with-date t)
(setq org-export-creator-string nil)

;; always use relative links
(setq org-link-file-path-type 'relative)

;; project definition
(setq org-publish-project-alist
      '(("site-org"
         :base-directory "org"
         :base-extension "org"
         :publishing-directory "."
         :recursive t
         :publishing-function org-html-publish-to-html
         :with-author nil
         :with-toc nil
         :section-numbers nil)
        ("assets"
         :base-directory "assets"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|svg\\|pdf"
         :publishing-directory "assets"
         :recursive t
         :publishing-function org-publish-attachment)
        ("site" :components ("site-org" "assets"))))

(org-publish "site" t)



(provide 'publish)
;;; publish.el ends here
