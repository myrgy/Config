;; -*- no-byte-compile: t; -*-
;;; private/my/packages.el
(disable-packages! cmake-mode company-irony company-irony-c-headers flycheck-irony irony irony-eldoc ivy-rtags rtags)

(package! avy)
(package! atomic-chrome)
(package! lispyville)
(package! lsp-mode :ignore t)
(package! lsp-ui :ignore t)
(package! company-lsp)

(package! eshell-autojump)
(package! evil-nerd-commenter)
(package! link-hint)
(package! htmlize)
(package! rg)
(package! smart-forward)
(package! symbol-overlay)
(package! tldr)
(package! try)

(package! rust-mode)
(package! lsp-rust)

(package! function-args)
(package! lpy :recipe (:fetcher github :repo "abo-abo/lpy" :files ("*")))

(disable-packages! company-prescient)
