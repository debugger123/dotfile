emacs --batch --eval "(progn (require 'org) (org-babel-tangle-file \"emacs.org\") (load-file \"setup.el\") (org-babel-tangle-file \"emacs.org\"))"
