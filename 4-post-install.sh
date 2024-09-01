emacs --batch --eval "(progn (require 'org) (org-babel-tangle-file \"emacs.org\") (org-babel-tangle-file \"root-tangle.org\") (load-file \"setup.el\") (org-babel-tangle-file \"root-tangle.org\"))"
