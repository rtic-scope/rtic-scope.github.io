#!/usr/bin/env sh
emacs --batch --no-init-file --eval '(progn (find-file "index.org") (org-html-export-to-html))'
