

(yas-reload-all)
(add-hook 'js2-mode-hook #'yas-minor-mode)

(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)

(provide 'post_hook)
