(require-package 'color-theme)
(color-theme-initialize)
(color-theme-robin-hood)

;; C-\ key-map
(define-prefix-command 'ctrl-L-map)
(global-set-key (kbd "\C-\\") 'ctrl-L-map)
;; \ r key-map (register key map)
(define-prefix-command 'L-R-map)
(global-set-key (kbd "\C-\\ r") 'L-R-map)

;; register key define
(define-key 'L-R-map (kbd "r") 'point-to-register)
(define-key 'L-R-map (kbd "j") 'jump-to-register)
(define-key 'L-R-map (kbd "s") 'copy-to-register)
(define-key 'L-R-map (kbd "i") 'insert-register)
(define-key 'L-R-map (kbd "t") 'copy-rectangle-to-register)

;;; neotree
(require-package 'neotree)
(setq neo-smart-open t)
(global-set-key (kbd "<f1>") 'neotree-toggle)
(global-set-key (kbd "C-c <f1>") 'neotree-dir)

;; yasnippets
(yas-global-mode t)
;; set key for yas use
(define-key yas-minor-mode-map (kbd "C-1") 'yas-expand)
(define-key yas-keymap (kbd "M-2") 'yas-next-field-or-maybe-expand)
(define-key yas-keymap (kbd "C-2") 'yas-prev-field)
(global-set-key (kbd "C-1") 'yas-expand)
(define-prefix-command 'yas-global-map)
(global-set-key (kbd "C-\\ y") 'yas-global-map)
(global-set-key (kbd "C-\\ y d") 'yas-describe-tables)
(global-set-key (kbd "C-\\ y i") 'yas-insert-snippet)
(global-set-key (kbd "C-\\ y n") 'yas-new-snippet)
(global-set-key (kbd "C-\\ y c") 'yas-recompile-all)
(global-set-key (kbd "C-\\ y l") 'yas-reload-all)

(defun hr-yasnippet-recompile-and-reload ()
  "make recompile and reload together"
  (interactive)
  (yas-recompile-all)
  (yas-reload-all))
(global-set-key (kbd "C-\\ y r") 'hr-yasnippet-recompile-and-reload)

;;;; global key define
(global-set-key (kbd "<f8>") 'eshell)
(global-set-key (kbd "<f7>") 'ielm)
(global-set-key (kbd "C-c <f6>") 'emms-add-playlist)
(global-set-key (kbd "<f6>") 'emms-playlist-mode-go)
;; org mode key
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
;; toggle mode
(define-prefix-command 'toggle-map)
(global-set-key (kbd "\C-\\ t") 'toggle-map)
(define-key 'toggle-map (kbd "n") 'linum-mode)
(define-key 'toggle-map (kbd "p") 'paredit-mode)
(define-key 'toggle-map (kbd "f") 'flymake-mode)

;;;; global mode default
(global-linum-mode t)

;; provide
(provide 'init-local)
