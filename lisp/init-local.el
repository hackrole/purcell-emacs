(when (maybe-require-package 'color-theme)

  (after-load 'color-theme
    (color-theme-initialize)
    (color-theme-robin-hood)))

;;; neotree
(require-package 'neotree)
(setq neo-smart-open t)
(global-set-key (kbd "<f1>") 'neotree-toggle)
(global-set-key (kbd "C-c <f1>") 'neotree-dir)

;;;; global key define
(global-set-key (kbd "<f8>") 'eshell)
(global-set-key (kbd "<f7>") 'ielm)
(global-set-key (kbd "C-c <f6>") 'emms-add-playlist)
(global-set-key (kbd "<f6>") 'emms-playlist-mode-go)
;; org mode key
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

;;;; global mode default
(global-linum-mode t)

;; provide
(provide 'init-local)
