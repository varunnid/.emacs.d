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
(require 'post_hook)
(require 'key_binding)
(require 'editor)
(setq omnisharp-server-executable-path "/Users/varunnidhi/omnisharp-server//OmniSharp/obj/Debug/OmniSharp.exe")
;;(server-start)


