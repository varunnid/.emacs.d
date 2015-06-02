(require 'helm-config)
(helm-mode 1)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(require 'autopair)
(autopair-global-mode)

(ido-mode 1)
;;(ido-everywhere 1)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(provide 'global)
