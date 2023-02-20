;;; custom-modes-config.el --- Package configuration for custom modes packages
;;; Commentary:
;;; Emacs custom modes configuration --- Package configuration for Emacs custom modes
;;; Code:

(use-package markdown-mode
  :ensure t
  :defer t)

(use-package yaml-mode
  :ensure t
  :defer t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode)))

(use-package go-mode
  :ensure t)

(use-package dockerfile-mode
  :ensure t
  :defer t)

(provide 'custom-modes-config)

;;; custom-modes-config.el ends here
