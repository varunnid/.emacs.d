(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1))) ;; back one
;;(define-key map (kbd "s-p") 'projectile-command-map)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "s-w") 'ace-window)

(global-set-key (kbd "M-]") 'next-buffer)
(global-set-key (kbd "M-[") 'previous-buffer)
(global-set-key (kbd "C-c d") 'custom-duplicate-current-line-or-region)
(global-set-key (kbd "C-k") 'custom-kill-whole-line)
(global-set-key (kbd "s-S-<up>") 'move-text-up)
(global-set-key (kbd "s-S-<down>") 'move-text-down)
(global-set-key (kbd "C-c s") 'custom-swap-windows)

(global-set-key [remap move-beginning-of-line]
                'custom-move-beginning-of-line)
(global-set-key (kbd "<s-f12>") 'helm-imenu)

(define-key projectile-mode-map [?\s-d] 'helm-projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'helm-projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'helm-projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'helm-projectile-ag)
(define-key projectile-mode-map [?\s-b] 'helm-projectile-switch-to-buffer)


(provide 'key_binding)
