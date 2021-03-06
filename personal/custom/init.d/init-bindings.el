(provide 'init-bindings)
;;; init-bindings.el --- autuln's configuration entry point.


(global-set-key (kbd "C-<tab>") 'company-dabbrev)
(global-set-key (kbd "M-<tab>") 'company-complete)
(global-set-key (kbd "C-c C-y") 'company-yasnippet)

(global-set-key (kbd "C-M-a") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-M-e") 'sp-end-of-sexp)
(global-set-key (kbd "C-M-k") 'sp-kill-sexp)
(global-set-key (kbd "C-M-k") 'sp-kill-sexp)
(global-set-key (kbd "C-M-n") 'sp-forward-sexp)
(global-set-key (kbd "C-M-p") 'sp-backward-sexp)
(global-set-key (kbd "C-M-b") 'sp-up-sexp)
(global-set-key (kbd "C-M-f") 'sp-down-sexp)

(global-set-key (kbd "C-x v R") 'diff-hl-revert-hunk)

(global-set-key (kbd "C-M-{") (lambda () (interactive) (shrink-window 10 1)))
(global-set-key (kbd "C-M-}") (lambda () (interactive) (enlarge-window 10 1)))
(global-set-key (kbd "C-M-?") (lambda () (interactive) (shrink-window 5 nil)))
(global-set-key (kbd "C-M-\"") (lambda () (interactive) (enlarge-window 5 nil)))
(global-set-key (kbd "C-M-]") (lambda () (interactive) (other-window 1)))
(global-set-key (kbd "C-M-[") (lambda () (interactive) (other-window -1)))

(global-set-key (kbd "<C-down-mouse-1>") nil)
(global-set-key (kbd "<C-down-mouse-2>") nil)
(global-set-key (kbd "<C-down-mouse-3>") nil)
(global-set-key (kbd "<mouse-3>") nil)
(global-set-key (kbd "<mouse-6>") (lambda () (interactive) nil))
(global-set-key (kbd "<double-mouse-6>") (lambda () (interactive) nil))
(global-set-key (kbd "<triple-mouse-6>") (lambda () (interactive) nil))
(global-set-key (kbd "<mouse-7>") (lambda () (interactive) nil))
(global-set-key (kbd "<double-mouse-7>") (lambda () (interactive) nil))
(global-set-key (kbd "<triple-mouse-7>") (lambda () (interactive) nil))
(global-set-key (kbd "<triple-wheel-left>") (lambda () (interactive) nil))
(global-set-key (kbd "<double-wheel-left>") (lambda () (interactive) nil))
(global-set-key (kbd "<wheel-left>") (lambda () (interactive) nil))
(global-set-key (kbd "<triple-wheel-right>") (lambda () (interactive) nil))
(global-set-key (kbd "<double-wheel-right>") (lambda () (interactive) nil))
(global-set-key (kbd "<wheel-right>") (lambda () (interactive) nil))

(global-set-key (kbd "<f1>") 'zygospore-toggle-delete-other-windows)
(global-set-key (kbd "<f2>") 'split-window-below)
(global-set-key (kbd "<f3>") 'split-window-right)
(global-set-key (kbd "<f4>") 'kill-buffer-and-window)
(global-set-key (kbd "<f10>") 'delete-window)

(global-set-key (kbd "<f7>") 'projectile-find-file)
(global-set-key (kbd "<f8>") 'projectile-find-dir)

(req-package key-chord
  :force t
  :ensure t
  :chords (("qw" . kill-this-buffer)
           ("qq" . kill-this-buffer)
           (";1" . zygospore-toggle-delete-other-windows)
           (";2" . split-window-below)
           (";3" . split-window-right)
           (";4" . kill-buffer-and-window)
           (";0" . delete-window)

           ("xf" . projectile-find-file)
           ("xd" . projectile-find-dir)
           (";l" . helm-bookmarks)
           (";m" . magit-status)
           ("xb" . ido-switch-buffer)
           (";p" . paradox-list-packages)
           (";o" . ace-window))
  :config (key-chord-mode 1))
