(defvar saykotoeri-region-func
  (lambda (point mark)
    "リージョン選択している部分をSayKotoeriに喋らせるコマンド"
    (interactive "r")
    (let ((text (buffer-substring-no-properties point mark)))
      (saykotoeri-play text)
      (deactivate-mark))))

(defun saykotoeri-play (text)
  "渡されたテキストをSayKotoeriに喋らせる関数"
  (condition-case nil
      (apply 'start-process `("SayKotoeri" nil "SayKotoeri" ,text))
    (error nil)))

(define-minor-mode saykotoeri-mode
  "SayKotoeri for emacs"
  :lighter " sayk" ; for mode line)
  :global t
  (princ saykotoeri-mode)
  (if (not (eq saykotoeri-mode nil))
      (fset 'saykotoeri-region saykotoeri-region-func)
    (if (fboundp 'saykotoeri-region)
        (fmakunbound 'saykotoeri-region))))

(provide 'saykotoeri)