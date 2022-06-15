(setq inhibit-startup-message t)
;;默认启用text mode
(setq default-major-mode 'text-mode)
;;去掉工具栏 工具栏 滚动条
(tool-bar-mode nil)
(menu-bar-mode nil)
(scroll-bar-mode nil)
;;在标题栏显示buffer的名字
(setq frame-title-format "%b@emacs")
;;不自动保存备份文件，不自动生成临时文件
(setq auto-save-mode nil)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq-default make-backup-files nil)
;;尽快显示按键序列
(setq echo-keystrokes 0.1)
;;显示列号
(global-linum-mode 1)
(setq column-number-mode t)
;;高亮当前行
(require 'hl-line) 
(global-hl-line-mode t) 
;;yes or no换成y/n
(fset 'yes-or-no-p 'y-or-n-p)
;;语法高亮
(global-font-lock-mode t)
;;匹配括号但不跳过去
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
;;设置默认工作目录
(setq default-directory "/tmp")
;;默认启用text-mode
(setq default-major-mode 'text-mode)
;;google-c-style google风格
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;代码折叠
(add-hook 'c-mode-common-hook
  (lambda()
    (local-set-key (kbd "C-c <right>") 'hs-show-block)
    (local-set-key (kbd "C-c <left>")  'hs-hide-block)
    (local-set-key (kbd "C-c <up>")    'hs-hide-all)
    (local-set-key (kbd "C-c <down>")  'hs-show-all)
    (hs-minor-mode t)))
;;缩进宽度4
(setq-default indent-tabs-mode t)
(setq default-tab-width 4)
(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'emms-tag-editor-mode-hook
               'sh-mode-hook
               ))
(add-hook hook '(lambda () (setq indent-tabs-mode nil))))
;;允许emacs和外部其他程序的粘贴,禁用鼠标选取进入剪切板
(setq x-select-enable-clipboard t)
(setq mouse-drag-copy-region nil)
;;设置粘贴缓冲条目数
(setq kill-ring-max 512)
;;ECB CEDET配置
(require 'cedet)
(require 'ede)
(require 'semantic)
(global-ede-mode t)
(require 'ecb)
(global-set-key [f12] 'ecb-activate)
(setq ecb-auto-activate nil
          ecb-tip-of-the-day nil
          ecb-tree-indent 4
          ecb-windows-height 0.5
          ecb-windows-width 0.20
          ecb-auto-compatibility-check nil
          ecb-version-check nil)
;;可以点击ecb窗口的东西
(setq ecb-primary-secondary-mouse-buttons 'mouse-1--C-mouse-1)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
