(;; Package Manager
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;; init package.el
(package-initialize)

;; Define Function for auto-complete-c-headers and is called for C hooks
(defun c:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

;; add this
(add-hook 'c-mode-hook 'c:ac-c-header-init)
(add-hook 'c++-mode-hook 'c:ac-c-header-init)
;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Auto Completion
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
;; Tabs,and indentation
(setq-default indent-tabs-mode nil)
(setq c-default-style "bsd"
 c-basic-offset 2)
(global-display-line-numbers-mode)
(load-theme #'rebecca t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [("#303030" "#303030")
    ("#5fafff" "#303030")
    ("#af5fff" "#303030")
    ("#afafd7" "#afafd7")
    ("#5fd7af" "#5fd7af")
    ("#87afd7" "#87afd7")
    ("#87ffd7" "#87ffd7")
    ("#afafff" "#afafff")])
 '(custom-safe-themes
   (quote
    ("61591d084abe2d9beff49e304e2ae7f12101b67ad87f212c921556bd074d1f3a" default)))
 '(package-selected-packages
   (quote
    (auto-complete-c-headers yasnippet auto-complete ac-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
