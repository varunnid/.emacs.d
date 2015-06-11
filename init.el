(setq load-path (append (mapcar 'expand-file-name '("~/.emacs.d/main"
						    "~/.emacs.d/main/language")) load-path)) 
(setq custom-file (expand-file-name "~/.emacs.d/main/custom.el"))
(load custom-file)
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)
(require 'global)
(require 'hooks)
(require 'look)
(require 'haskell)
(require 'javascript)
(require 'html)
(require 'scala)


;;(server-start)


