(defconst cquery-packages
  '(
    (cquery :location local)
    company
    ))

;; See also https://github.com/cquery-project/cquery/wiki/Emacs
(defun cquery/init-cquery ()
  (use-package cquery
    :commands lsp-cquery-enable
    :init (add-hook 'c-mode-common-hook #'cquery//enable)
    :config
    ;; overlay is slow
    ;; Use https://github.com/emacs-mirror/emacs/commits/feature/noverlay
    (setq cquery-sem-highlight-method 'font-lock)
    (cquery-use-default-rainbow-sem-highlight)
    (setq cquery-extra-init-params
          '(:cacheFormat "msgpack" :completion (:detailedLabel t) :xref (:container t)
                         :diagnostics (:frequencyMs 5000)))

    (require 'projectile)
    (add-to-list 'projectile-globally-ignored-directories ".cquery_cached_index")

    (setq cquery-project-roots '("~/Dev/llvm-project" "~/Dev/llvm"))

    (evil-set-initial-state 'cquery-tree-mode 'emacs)
    ))

(defun cquery/post-init-company ()
  (spacemacs|add-company-backends :backends company-lsp :modes c-mode-common)
  )
