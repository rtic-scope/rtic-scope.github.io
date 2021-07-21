(require 'org)

(defun tmplt-publish ()
  "Publish the documentation to HTML."
  (interactive)
  (find-file "index.org")
  (org-html-export-to-html)
  (make-directory "./docs" t)
  (rename-file "index.html" "./docs/index.html" t))
