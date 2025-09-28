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
(require 'ox-publish)

(setq org-html-head-include-default-style nil)
(setq org-html-head-include-scripts nil)
(setq org-html-head
      "<style>
body {
  font-family: 'Times New Roman', Times, serif;
}
</style>")

(setq org-publish-project-alist
      '(("site-org"
         :base-directory "org"
         :base-extension "org"
         :publishing-directory "."
         :recursive t
         :publishing-function org-html-publish-to-html
         :with-author nil
         :with-toc t
         :section-numbers t)
        ("assets"
         :base-directory "assets"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|svg"
         :publishing-directory "assets"
         :recursive t
         :publishing-function org-publish-attachment)
        ("site" :components ("site-org" "assets"))))

(org-publish "site" t)



(provide 'publish)
;;; publish.el ends here
