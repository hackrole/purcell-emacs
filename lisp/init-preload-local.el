;; use proxy for melpa
(setq url-proxy-services '(("http" . "127.0.0.1:8090")
                           ("https" . "127.0.0.1:8090")
                           ("no_proxy" .  "localhost")))

;; C-q instead of C-x
(global-set-key (kbd "C-q") ctl-x-map)
(global-unset-key (kbd "C-x"))
;; set mark key
(global-set-key (kbd "\C-t") 'set-mark-command)

(provide 'init-preload-local)
