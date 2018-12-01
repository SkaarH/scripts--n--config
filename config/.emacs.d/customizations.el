;;; customizations.el --- Configs and key maps for Emacs.
;;; Commentary:
;;; Configure Emacs --- Configs and key maps for Emacs.
;;;
;;; Code:

(setq inhibit-startup-message t)

;; Removes tool and menu bar.
(tool-bar-mode -1)
(menu-bar-mode -1)
;; Removes scroll bar.
(scroll-bar-mode -1)

;; Display line numbers
(global-linum-mode t)

;; Autoclose brackets, quotes.
(electric-pair-mode 1)

;; Sets tabs width to 4 spaces.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(global-set-key (kbd "RET") 'newline-and-indent)


;; Sets bash to be used as shell.
(setq explicit-shell-file-name "/bin/bash")

;; Enables ido-mode
(setq-default ido-enable-flex-matching t)
(setq-default ido-everyehere t)
(ido-mode 1)

;; Sets ibuffer as default.
(defalias 'list-buffers 'ibuffer)

(setq-default c-default-style "linux")
(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode t)

(defun beginning-of-line++ ()
  "Go to first character on a line."
  (interactive)
  (if (bolp)
	  (back-to-indentation)
	(beginning-of-line)))
(global-set-key (kbd "C-a") 'beginning-of-line++)

(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-lambda "eshell-prompt-extras")
  (setq eshell-highlight-prompt nil
        eshell-prompt-function 'epe-theme-lambda))


;; Env variables
(setenv "SCRIPTS" "/home/eldron/Projects/scripts-and-config/scripts/")

;;; customizations.el ends here
