(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

(setq ac-js2-evaluate-calls t)

(require 'tern)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(defun my-paredit-nonlisp ()
  "Turn on paredit mode for non-lisps."
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimiter) nil)))
  (paredit-mode 1))

(add-hook 'js2-mode-hook 'my-paredit-nonlisp)

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))


(provide 'javascript)
