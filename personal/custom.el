;; disable whitespace mode
(setq prelude-whitespace nil)

;; swap meta and super keys on OS X
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; enable line number
(global-linum-mode t)
(setq linum-format " %d ")
(global-set-key (kbd "M-l") 'goto-line)

;; comment/uncomment current line
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "M-/") 'toggle-comment-on-line)
