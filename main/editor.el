(setq require-final-newline t)


(setq auto-save-file-name-transforms
	   `((".*" ,temporary-file-directory t)))

(global-auto-revert-mode t)

(defun auto-save-command ()
 
  (when (and buffer-file-name
             (buffer-modified-p (current-buffer))
             (file-writable-p buffer-file-name))
    (save-buffer)))

(defmacro advise-commands (advice-name commands class &rest body)
  "Apply advice named ADVICE-NAME to multiple COMMANDS.
The body of the advice is in BODY."
  `(progn
     ,@(mapcar (lambda (command)
                 `(defadvice ,command (,class ,(intern (concat (symbol-name command) "-" advice-name)) activate)
                    ,@body))
               commands)))

;; advise all window switching functions
(advise-commands "auto-save"
                 (switch-to-buffer other-window windmove-up windmove-down windmove-left windmove-right)
                 before
                 (auto-save-command))

(add-hook 'mouse-leave-buffer-hook 'auto-save-command)

(when (version<= "24.4" emacs-version)
  (add-hook 'focus-out-hook 'auto-save-command))


;;(require 'uniquify)

(setq blink-matching-paren nil)
(require 'diminish)

(require 'volatile-highlights)
(volatile-highlights-mode t)
(diminish 'volatile-highlights-mode)

(require 'expand-region)
(require 'dired-x)

(require 'windmove)
(windmove-default-keybindings)

(global-hl-line-mode +1)


(fset 'yes-or-no-p 'y-or-n-p)

(setq visible-bell 't)

(setq ring-bell-function 'ignore)

(provide 'editor)






