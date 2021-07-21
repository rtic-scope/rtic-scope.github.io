(require 'package)
(package-initialize)
(unless package-archive-contents
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-refresh-contents))
(dolist (pkg '(rust-mode))
  (unless (package-installed-p pkg)
    (package-install pkg)))

(require 'org)
(require 'rust-mode)                    ; apply Rust syntax highlightning in export

(defun tmplt-publish ()
  "Publish the documentation to HTML."
  (interactive)
  (find-file "index.org")
  (org-html-export-to-html)
  (make-directory "./docs" t)
  (rename-file "index.html" "./docs/index.html" t))
