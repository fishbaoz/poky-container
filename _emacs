;; Options for compiling emacs 23
;;./configure --with-x-toolkit=lucid --without-sound --without-xim --without-hesiod --without-pop --without-kerberos --without-kerberos5 --with-x --without-ns --without-sync-input --without-libotf --without-dbus --with-xft --without-png --without-gif --without-jpeg --without-m17n-flt --without-rsvg --without-pkg-config-prog --without-gpm --without-gif --disable-maintainer-mode --without-tiff


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path' "/usr/share/emacs/site-lisp")

;; Set colors
;; maxium the frame. You may have to change it on new system.
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 112) (height . 42)))

(if (or (eq window-system 'x)(eq window-system 'w32) )
  (set-foreground-color "wheat")
  (set-foreground-color "white") ;;else
)

;;(set-foreground-color "#dedede")

(set-background-color "black")

;;(set-background-color "#202020")
;;(set-default-font "-misc-fixed-medium-r-normal--18-120-100-100-c-90-iso8859-1")
;;(custom-set-faces
;; '(text-cursor ((t (:foreground "white" :background "red3"))) t)
;; '(font-lock-string-face ((((class color) (background light)) (:foreground "green4" :italic t))))
;; '(font-lock-reference-face ((((class color) (background light)) (:foreground "black"))))
;; '(font-lock-doc-string-face ((((class color) (background light)) (:foreground "green4" :bold t))))
;; '(font-lock-variable-name-face ((((class color) (background light)) (:foreground "black"))))
;; '(font-lock-keyword-face ((((class color) (background light)) (:foreground "black" :bold t))))
;; '(font-lock-type-face ((((class color) (background light)) (:foreground "black"))))
;; '(font-lock-comment-face ((((class color) (background light)) (:foreground "red4" :italic t))))
;; '(font-lock-function-name-face ((((class color) (background light)) (:foreground "black"))))
;; '(makefile-targets ((t (:forground "red")))t)
;;)
;;(require 'color-theme2)
;;(add-to-list 'custom-theme-load-path "~/cyberpunk-theme.el")

;;Need highlight-tail.el
;;(require 'highlight-tail)
;;(set-cursor-color "purple")
(set-cursor-color "orchid")
(set-mouse-color  "goldenrod")
(setq blinking-cursor-mode t)
(setq-default cursor-type 'bar)
;;(setq cursor-type '(bar . 2))

;;(set-background-color "DarkSlateGrey")
;;  (set-face-font 'menu "7x14")
;;  (set-face-foreground 'menu "black").

;; Set font size
;; this font can change the italic and bold
;; -verdor-fontname-bold-italic-width-comment-pixelwidth-ptwidth-
;;(add-to-list 'default-frame-alist '(font . "-Adobe-Courier-Medium-R-Normal--12-120-75-75-M-70-ISO8859-1"))

;;(add-to-list 'default-frame-alist '(font .
;;"-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1"

;;"-adobe-helvetica-medium-r-normal--18-180-75-75-p-98-iso8859-1"
;;"sung-roman20"
;;"song-medium20"
;;"olglyph-19"
;;"-sun-sung-medium-r-normal--18-160-75-75-c-160-cns11643-9"
;;"-b&h-lucidatypewriter-medium-r-normal-sans-18-*-75-75-m-110-iso8859-1"
;;))
;;(add-to-list 'default-frame-alist '(font . "8x16"))
;;(add-to-list 'default-frame-alist '(width . 160))
;;(add-to-list 'default-frame-alist '(height . 100))

;;(setq frame-alpha-lower-limit 0)

;;(defun font-existsp (font)
;;  (if (null (x-list-fonts font))
;;      nil t))

(when window-system (global-unset-key "\C-z"))

(defvar missing-packages-list nil
  "List of packages that `try-require' can't find.")

(defun try-require (feature)
  "Attempt to load a library or module. Return true if the
library given as argument is successfully loaded. If not, instead
of an error, just add the package to a list of missing packages."
  (condition-case err
      ;; protected form
      (progn
        (message "Checking for library `%s'..." feature)
        (if (stringp feature)
            (load-library feature)
          (require feature))
        (message "Checking for library `%s'... Found" feature))
    ;; error handler
    (file-error  ; condition
     (progn
       (message "Checking for library `%s'... Missing" feature)
       (add-to-list 'missing-packages-list feature))
     nil)))

;;(if (or (eq window-system 'x)(eq window-system 'w32) )
;;  (if (null (x-list-fonts "Monaco"))
    (set-frame-font  "DejaVu Sans Mono-20")
;;    (set-frame-font  "Monaco-14")
;;    (set-frame-font  "monofur-16")
;;  )
;;)

;;(if (>= emacs-major-version 23)
;; (progn
  ;;(set-frame-parameter nil 'font-backend ' (xft x))
;;  (set-frame-font
  ;;"-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1"
  ;;"-b&h-lucida-medium-r-normal-sans-14-100-100-100-p-80-iso10646-1"
  ;;"Courier 10 Pitch:style"
  ;;"Liberation Mono"
  ;;"Monospace-14"
  ;;"DejaVu Sans Mono-14"
  ;;"Consolas-14"
;;  "monofur-16"
  ;;"Nimbus Mono-14"
  ;;"Utopia-14"
  ;;"DejaVu LGC Serif-14"
  ;;"Monaco-14"  ;;can not get italic
  ;;"Courier-16:Italic:Bold"
  ;;"MiscFixed-18:bold:italic"
  ;;"Luxi Mono-14"
  ;;"DejaVu LGC Sans Condensed-14"
  ;;"Angelus III"  ;; can not get italic
  ;;"Script_12_Pitch_BT"  ;;can not get italic
  ;;Inconsolata
;;  )
  ;;(set-fontset-font "fontset-default" 'han '("WenQuanYi Bitmap Song" . "unicode-bmp"))
;; )
 ;; before emacs 22
;; (set-default-font
;; "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1"
;; )
;;)

(set-face-foreground 'font-lock-keyword-face "#6060FF")
(set-face-bold-p 'font-lock-keyword-face t)

(set-face-foreground 'font-lock-comment-face "red")
;;(if (eq window-system 'x)
;;    (set-face-font 'font-lock-comment-face "monofur-14"))
(set-face-italic-p 'font-lock-comment-face t)

(set-face-foreground 'font-lock-type-face "cyan")

(set-face-foreground 'font-lock-function-name-face "gold")
(set-face-underline-p 'font-lock-function-name-face t)

(set-face-foreground 'font-lock-variable-name-face "gold")

;;(set-face-foreground 'font-lock-reference-face "gole")

;;(set-face-foreground 'font-lock-number-face "gold")
;;(font-lock-number-face ((t (:foreground "Gold"))))


(set-face-foreground 'font-lock-constant-face "SeaGreen")

(set-face-foreground 'font-lock-string-face "purple")

(set-face-foreground 'font-lock-builtin-face "blue")

;;(set-face-foreground 'font-lock-warning-face "blue")
(set-face-background 'font-lock-warning-face "grey")

;;(set-face-foreground 'font-lock-warning-face "blue")
(set-face-foreground 'font-lock-preprocessor-face "#A0A0A0")

(set-face-foreground 'font-lock-doc-face "red")
(set-face-italic-p 'font-lock-doc-face t)

;; Emacs-BGEX patch
(when (boundp 'bgex-exist-p)
  (if (try-require 'bgex)
   (progn
    (bgex-set-image-default "~/girl_at_right.jpg" t)
    (set-face-background 'mode-line          "#4466aa")
    (set-face-background 'mode-line-inactive "#99aaff")
    (set-face-foreground 'mode-line          "wheat")
    (set-face-foreground 'mode-line-inactive "wheat")
;;  (bgex-set-image-default "~/background.xpm" t)
  )
 )
)

;;(custom-set-faces
;;   '(mode-line ((t (:box (:line-width 2 :color "red"))))))
;;(set-face-background 'fringe "#809088")
;; This show the the parentheses match.
(show-paren-mode)
(setq blink-matching-paren t)
(setq show-paren-style 'parenthesis)
;; Show in which functions now
(which-func-mode)
;; enhanced change buffer
;; ido-mode is quite better than iswitchb-mode
(if (>= emacs-major-version 22)
 (ido-mode)
 (iswitchb-mode)
)

;;(add-to-list 'load-path "~/test/helm-master")
;;(if (try-require 'helm-config)
;;  (progn
;;    (helm-mode 1)
;;    (define-key global-map [remap find-file] 'helm-find-files)
;;    (define-key global-map [remap occur] 'helm-occur)
;;    (define-key global-map [remap list-buffers] 'helm-buffers-list)
;;    (define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
;;    (unless (boundp 'completion-in-region-function)
;;      (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
;;      (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
;;    (add-hook 'kill-emacs-hook #'(lambda () (and (file-exists-p "$TMP") (delete-file "$TMP"))))
;;  )
;;)

;; get rid of the annoying shift-selection mode
(if (>= emacs-major-version 23)
 (setq shift-select-mode nil)
)

;; restore window layout
;;(winner-mode)

(setq tramp-mode nil)

;;save book markxit
(setq bookmark-save-flag 5)
;; split long lines in multi windows
;;(setq-default truncate-partial-width-windows nil)
;; shell color
;; set TERM=screen if FreeBSD
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'shell-mode-hook
  (lambda ()
     (setq show-trailing-whitespace nil))
)
(add-hook 'term-mode-hook
  (lambda ()
     (setq show-trailing-whitespace nil))
)

(setq comint-scroll-show-maximum-output nil)

(if(try-require 'w3m)
 (progn
  (setq w3m-use-mule-ucs t)
  (setq w3m-use-toolbar t)
  (setq w3m-use-cookies t)
  (setq w3m-display-inline-image t)
  (setq w3m-bookmark-file-coding-system 'chinese-iso-8bit)
  (setq w3m-coding-system 'chinese-iso-8bit)
  (setq w3m-default-coding-system 'chinese-iso-8bit)
  (setq w3m-file-coding-system 'chinese-iso-8bit)
  (setq w3m-file-name-coding-system 'chinese-iso-8bit)
  (setq w3m-terminal-coding-system 'chinese-iso-8bit)
  (setq w3m-input-coding-system 'chinese-iso-8bit)
  (setq w3m-output-coding-system 'chinese-iso-8bit)
  (setq w3m-tab-width 8)
  (setq w3m-view-this-url-new-session-in-background t)
  (setq browse-url-browser-function 'w3m-browse-url)
    (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
 )
)
;;  (global-set-key "\C-xm" 'browse-url-at-point)

;; Set the font lock
(global-font-lock-mode t)
(setq default-major-mode 'text-mode)
(setq font-lock-maximum-decoration 3)
(setq font-lock-support-mode 'jit-lock-mode)
;;(setq font-lock-support-mode 'lazy-lock-mode)
;;(setq jit-lock-stealth-time 0)


;; highlight the line which is edited
;;(global-hl-line-mode t)
;; the marked region can be visual
(transient-mark-mode t)
(setq highlight-nonselected-windows t)
(setq-default show-trailing-whitespace 1) ;;see?
(setq-default indicat-empty-line t)
;;(setq-default default-indicate-empty-lines t)
;; delete auto saved files when exit
(setq delete-auto-save-files t)

;;spell check
;;(setq-default ispell-program-name "aspell")
;;(setq-default ispell-local-dictionary "american")
;;(ispell-minor-mode)
;;(flyspell-mode -1)
;; show buffer name at title
(if (eq window-system 'w32)
 (setq frame-title-format
  (list
      "WinEmacs %+"
      (getenv "HOSTNAME")
      " v"
      emacs-version
 ))
 (setq frame-title-format
  (list
      "emacs-"
      emacs-version
      " - [%b %+] "
      system-name
      " by "
      user-login-name
 ))
)

;; Show column number.
(setq column-number-mode t)
;;dired recursive delete
(setq dired-recursive-deletes t)
;; disable the toolbar
;;(tool-bar-mode -1)
(if (eq window-system 'nil)
  (menu-bar-mode -1))

(menu-bar-mode -1)
;;(set-scroll-bar-mode 'right)
;; tool tip disable
(tooltip-mode -1)
;;wheel
;;(mouse-wheel-mode t)
;;new line
;;(setq require-final-newline t)
;;mouse avoid
;;(mouse-avoidance-mode 'exile) ;;banish exile jump animate cat-and-mouse proteus

(xterm-mouse-mode t)
;; Never save backup file
(setq make-backup-files nil)
;;set line space
;(custom-set-variables '(line-spacing 5))

(setq x-select-enable-clipboard t)

(electric-pair-mode t)

(if (<= emacs-major-version 22)
 (setq line-move-visual t)
 ;Pressing down arrow key moves the cursor by a screen line.
 ;It is default in 23.
)
;;(setq visible-bell tx)
;;(require 'flymake)
;;
;;
;;(setq flymake-allowed-file-name-masks '())
;;(when (executable-find "texify")
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.tex\\'" flymake-simple-tex-init))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("[0-9]+\\.tex\\'"
;;                  flymake-master-tex-init flymake-master-cleanup)))
;;(when (executable-find "xml")
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.xml\\'" flymake-xml-init))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.html?\\'" flymake-xml-init)))
;;(when (executable-find "perl")
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.p[ml]\\'" flymake-perl-init)))
;;(when (executable-find "php")
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.php[345]?\\'" flymake-php-init)))
;;(when (executable-find "make")
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.idl\\'" flymake-simple-make-init))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.java\\'"
;;
;;                  flymake-simple-make-java-init flymake-simple-java-cleanup))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.cs\\'" flymake-simple-make-init)))
;;(when (or (executable-find "make")
;;           (executable-find "gcc")
;;           (executable-find "g++"))
;;   (defvar flymake-makefile-filenames '("Makefile" "makefile" "GNUmakefile")
;;     "File names for make.")
;;   (defun flymake-get-gcc-cmdline (source base-dir)
;;     (let ((cc (if (string= (file-name-extension source) "c") "gcc" "g++")))
;;       (list cc
;;             (list "-Wall"
;;
;;                   "-Wextra"
;;                   "-pedantic"
;;                   "-fsyntax-only"
;;                   "-I.."
;;                   "-I../include"
;;                   "-I../inc"
;;
;;                   "-I../common"
;;                   "-I../public"
;;                   "-I../.."
;;                   "-I../../include"
;;                   "-I../../inc"
;;                   "-I../../common"
;;
;;                   "-I../../public"
;;                   source))))
;;   (defun flymake-init-find-makfile-dir (source-file-name)
;;     "Find Makefile, store its dir in buffer data and return its dir, if found."
;;     (let* ((source-dir (file-name-directory source-file-name))
;;            (buildfile-dir nil))
;;       (catch 'found
;;
;;         (dolist (makefile flymake-makefile-filenames)
;;           (let ((found-dir (flymake-find-buildfile makefile source-dir)))
;;             (when found-dir
;;               (setq buildfile-dir found-dir)
;;               (setq flymake-base-dir buildfile-dir)
;;               (throw 'found t)))))
;;       buildfile-dir))
;;   (defun flymake-simple-make-gcc-init-impl (create-temp-f
;;                                             use-relative-base-dir
;;                                             use-relative-source)
;;     "Create syntax check command line for a directly checked source file.
;;Use CREATE-TEMP-F for creating temp copy."
;;
;;     (let* ((args nil)
;;            (source-file-name buffer-file-name)
;;            (source-dir (file-name-directory source-file-name))
;;            (buildfile-dir
;;             (and (executable-find "make")
;;                  (flymake-init-find-makfile-dir source-file-name)))
;;            (cc (if (string= (file-name-extension source-file-name) "c")
;;                    "gcc"
;;                  "g++")))
;;       (if (or buildfile-dir (executable-find cc))
;;           (let* ((temp-source-file-name
;;                   (ignore-errors
;;
;;                     (flymake-init-create-temp-buffer-copy create-temp-f))))
;;             (if temp-source-file-name
;;                 (setq args
;;                       (flymake-get-syntax-check-program-args
;;                        temp-source-file-name
;;                        (if buildfile-dir buildfile-dir source-dir)
;;                        use-relative-base-dir
;;                        use-relative-source
;;                        (if buildfile-dir
;;                            'flymake-get-make-cmdline
;;                          'flymake-get-gcc-cmdline)))
;;               (flymake-report-fatal-status
;;                "TMPERR"
;;                (format "Can't create temp file for %s" source-file-name))))
;;         (flymake-report-fatal-status
;;          "NOMK" (format "No buildfile (%s) found for %s, or can't found %s"
;;
;;                         "Makefile" source-file-name cc)))
;;       args))
;;   (defun flymake-simple-make-gcc-init ()
;;     (flymake-simple-make-gcc-init-impl 'flymake-create-temp-inplace t t))
;;   (defun flymake-master-make-gcc-init (get-incl-dirs-f
;;                                        master-file-masks
;;                                        include-regexp)
;;     "Create make command line for a source file
;;  checked via master file compilation."
;;     (let* ((args nil)
;;            (temp-master-file-name
;;             (ignore-errors
;;
;;               (flymake-init-create-temp-source-and-master-buffer-copy
;;                get-incl-dirs-f
;;                'flymake-create-temp-inplace
;;                master-file-masks
;;                include-regexp)))
;;            (cc (if (string= (file-name-extension buffer-file-name) "c")
;;                    "gcc"
;;                  "g++")))
;;       (if temp-master-file-name
;;           (let* ((source-file-name buffer-file-name)
;;                  (source-dir (file-name-directory source-file-name))
;;                  (buildfile-dir
;;                   (and (executable-find "make")
;;                        (flymake-init-find-makfile-dir source-file-name))))
;;             (if (or buildfile-dir (executable-find cc))
;;                 (setq args (flymake-get-syntax-check-program-args
;;                             temp-master-file-name
;;                             (if buildfile-dir buildfile-dir source-dir)
;;                             nil
;;                             nil
;;                             (if buildfile-dir
;;                                 'flymake-get-make-cmdline
;;                               'flymake-get-gcc-cmdline)))
;;               (flymake-report-fatal-status
;;                "NOMK"
;;
;;                (format "No buildfile (%s) found for %s, or can't found %s"
;;                        "Makefile" source-file-name cc))))
;;         (flymake-report-fatal-status
;;          "TMPERR" (format "Can't create temp file for %s" source-file-name)))
;;       args))
;;   (defun flymake-master-make-gcc-header-init ()
;;     (flymake-master-make-gcc-init
;;      'flymake-get-include-dirs
;;      '("\\.cpp\\'" "\\.c\\'")
;;      "[ \t]*#[ \t]*include[ \t]*\"\\([[:word:]0-9/\\_.]*%s\\)\""))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.\\(?:h\\(?:pp\\)?\\)\\'"
;;
;;                  flymake-master-make-gcc-header-init flymake-master-cleanup))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'"
;;
;;                  flymake-simple-make-gcc-init)))
;;(add-hook 'find-file-hook 'flymake-find-file-hook)


;;(defun flymake-perl-init ()
;;  (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                     'flymake-create-temp-inplace))
;;         (local-file (file-relative-name
;;                      temp-file
;;                      (file-name-directory buffer-file-name))))
;;    (list "perl" (list "-wc " local-file))))
;;
;;(setq flymake-allowed-file-name-masks
;;      (cons '(".+\\.pl$"
;;              flymake-perl-init
;;              flymake-simple-cleanup
;;              flymake-get-real-file-name)
;;            flymake-allowed-file-name-masks))
;;
;;(defun flymake-c-init ()
;;  (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                     'flymake-create-temp-inplace))
;;         (local-file (file-relative-name
;;                      temp-file
;;                      (file-name-directory buffer-file-name))))
;;    (list "/usr/bin/gcc" (list "-c -fsyntax-only " local-file))))
;;
;;(setq flymake-allowed-file-name-masks
;;      (cons '(".+\\.c$"
;;              flymake-c-init
;;              flymake-simple-cleanup
;;              flymake-get-real-file-name)
;;            flymake-allowed-file-name-masks))

;;(defun interrupting-flymake-start-syntax-check (base-function)
;;    (when (and (boundp 'flymake-syntax-check-process) (process-live-p flymake-syntax-check-process))
;;      (setq flymake-check-was-interrupted t)
;;      (flymake-kill-process flymake-syntax-check-process))
;;    (funcall base-function)
;;    (let ((proc (car flymake-processes)))
;;      (set-process-query-on-exit-flag proc nil)
;;      (set (make-local-variable 'flymake-syntax-check-process) proc)
;;      (setq flymake-check-was-interrupted t)
;;      (setq flymake-is-running nil)))
;;(advice-add 'flymake-start-syntax-check :around #'interrupting-flymake-start-syntax-check)

;; dont make up version control backup file
(setq version-control 'never)
;;scrolling set
(setq scroll-preserve-screen-position t)
(setq scroll-step 1
      scroll-conservative 10000)

;; uniquify buffer names: append path if buffer names are identical
(if (try-require 'uniquify)
  (setq uniquify-buffer-name-style 'post-forward-angle-brackets)
)
(global-cwarn-mode 1)

(try-require 'generic-x)
(try-require 'nhexl-mode)
(try-require 'urweb-mode)

(setq backward-delete-char-untabify-method nil)
;;(ruler-mode)
;; show and input  chinese
;;(set-keyboard-coding-system 'cn-gb-2312)
;;(set-selection-coding-system 'cn-gb-2312)
;;(set-terminal-coding-system  'cn-gb-2312)
;;(set-buffer-file-coding-system 'gb2312)
;;(setq default-buffer-file-coding-system 'gb2312)
;;(setq locale-coding-system 'gb2312)
;;(set-language-environment-coding-systems "Chinese-GB"  nil)
;;(setq default-input-method 'chinese-py-punct)

;;(setq current-language-environment "Chinese-GB")

;;(require 'mule-gbk)
;;(mule-gbk-selection-setup)
;;(when (fboundp 'utf-translate-cjk-mode)
;;  (require 'gbk-utf-mode)
;;  (utf-translate-cjk-load-tables)
;;  (utf-translate-cjk-mode 1)
;;  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))
;; (define-coding-system-alias 'chinese-iso-8bit 'chinese-gbk)
;; (define-coding-system-alias 'cn-gb-2312 'chinese-gbk)
;; (define-coding-system-alias 'euc-china 'chinese-gbk)
;; (define-coding-system-alias 'euc-cn 'chinese-gbk)
;; (define-coding-system-alias 'cn-gb 'chinese-gbk)
;; (define-coding-system-alias 'gb2312 'chinese-gbk)
;; (define-coding-system-alias 'cp936 'chinese-gbk)
;; (define-coding-system-alias 'gb18030 'chinese-gbk)
;; (define-coding-system-alias 'GB18030 'chinese-gbk)
;; (define-coding-system-alias 'chinese-gb18030 'chinese-gbk)
;; (define-coding-system-alias 'cn-gb18030 'chinese-gbk)

;;(set-keyboard-coding-system 'chinese-gbk)
;;(set-selection-coding-system 'chinese-gbk)
;;(set-terminal-coding-system  'chinese-gbk)
;;(set-buffer-file-coding-system 'gbk)
;;(setq default-buffer-file-coding-system 'gbk)
;;(setq locale-coding-system 'gbk)
;;(set-language-environment-coding-systems "chinese-GBK"  nil)
;;(setq default-input-method 'chinese-py-punct)

;; Suppress echoing when a subprocess asks for a password
(add-hook 'comint-output-filter-functions
   'comint-watch-for-password-prompt)
(setq comint-use-prompt-regexp t)
;; add global abbrev
;; set key macro
;;(global-set-key  [?\(] 'skeleton-pair-insert-maybe)
;;(setq skeleton-pair t)
;;(global-set-key  [?\C-;] 'hippie-expand)
(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list
 '(try-expand-dabbrev-visible
  try-expand-dabbrev
  try-expand-dabbrev-all-buffers
  try-expand-dabbrev-from-kill
  try-complete-file-name-partially
  try-complete-file-name
  try-expand-all-abbrevs
  try-expand-list
  try-expand-line
  try-complete-lisp-symbol-partially
  try-complete-lisp-symbol))
;; Show time and date.
;; I do not care these holidays
;;(setq christian-holidays nil)
;;(setq hebrew-holidays nil)
;;(setq islamic-holidays nil)
;;(setq solar-holidays nil)
;;(setq general-holidays '((holiday-fixed 1 1 "New years")
;;                       (holiday-fixed 2 14 "Valentines day")
;;                       (holiday-fixed 3 14 "°×É«ÇéÈË½Ú")
;;                       (holiday-fixed 4 1 "ÓÞÈË½Ú")
;;                       (holiday-fixed 5 1 "ÀÍ¶¯½Ú")
;;                       (holiday-float 5 0 2 "Ä¸Ç×½Ú")
;;                       (holiday-fixed 6 1 "¶ùÍ¯½Ú")
;;                       (holiday-float 6 0 3 "¸¸Ç×½Ú")
;;                       (holiday-fixed 7 1 "½¨µ³½Ú")
;;                       (holiday-fixed 8 1 "½¨¾ü½Ú")
;;                       (holiday-fixed 9 10 "½ÌÊ¦½Ú")
;;                       (holiday-fixed 10 1 "¹úÇì½Ú")
;;                       (holiday-fixed 12 25 "Ê¥µ®½Ú")
;;                      ))
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)
;;(add-hook 'diary-hook 'appt-make-list)
;;(add-hook 'today-visible-calendar-hook 'calendar-mark-today)
;;(setq mark-diary-entries-in-calendar t)
;;(setq mark-holidays-in-calendar t)
;;(setq appt-message-warning-time 0)
;;(diary )
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; My C mode for generic file except that in linux.
(font-lock-add-keywords
  'c-mode
  '(("\\<\\([1-9][0-9]*[Uu]?[Ll]*\\)\\>" 1 font-lock-constant-face append)
    ("\\<\\([0][0-7]*[Uu]?[Ll]*\\)\\>" 1 font-lock-constant-face append)
    ("\\<\\(0[xX][0-9a-fA-F][0-9a-fA-F]*[Uu]?[Ll]*\\)\\>" 1 font-lock-constant-face append)
    ("\\<\\([0-9][0-9]*[.][0-9][0-9]*\\)\\>" 1 font-lock-constant-face append)
   )
)
(font-lock-add-keywords
 'c-mode
 '(("\\<\\(FIXME\\):" 1 font-lock-warning-face t)
))
(font-lock-add-keywords
 'c-mode
 '(("\\<\\(TODO\\):" 1 font-lock-warning-face t)
))
;;(font-lock-add-keywords
;; 'c-mode
;; '(("\\<\\([0-9][0-9a-fA-F]*[g-km-tv-zg-KM-TV-Z][g-km-tv-zg-KM-TV-Z]*[0-9a-fA-F]*\\)\\>" 1 font-lock-warning-face t)
;;))

;;(set-frame-parameter (selected-frame) 'alpha' (85 50))
;;(add-to-list 'default-frame-alist' (alpha 85 50))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(warning-suppress-types (quote ((undo discard-info)))))
;;(add-to-list 'warning-suppress-types '(undo discard-info))

(defun dos2unix()
  "dos2unix"
  (interactive)
  (set-buffer-file-coding-system 'unix 't)
  (save-buffer)
)

(defun copy-word(&optional arg)
  "Copy words at point"
  (interactive "P")
  (let ((beg (progn (if (looking-back "[a-zA-Z0-9]" 1)(backward-word 1))(point)))
	(end (progn (forward-word arg)(point))))
    (copy-region-as-kill beg end))
)

(defun bracket-region ()
  "Add a bracket"
  (interactive)
  (setq left-bracket-point (region-beginning))
  (setq right-bracket-point (+ (region-end) 1))
  (goto-char left-bracket-point)
  (insert-char ?\( 1)
  (goto-char right-bracket-point)
  (insert-char ?\) 1)
)


;;(global-set-key "\C-c\C-r" 'bracket-region)

(defun my-c-mode ()
  "C mode with adjusted defaults for use with the generic file."
  (interactive)
  (c-mode)
  (c-set-style "linux")
;;  (setq c-basic-offset 4)
  ;;(setq indent-tabs-mode nil)
  ;;hide the block you don't want to see
  ;;preprocessor
  (setq c-macro-shrink-window-flag t)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag t)
  (setq skeleton-pair t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)
;;  (setq hide-ifdef-initially t)
;;  (hide-ifdef-mode)
  (define-key c-mode-base-map [return] 'newline-and-indent)
)

(defun cpp-comment-remove ()
  "Change the c++ comment to c comment."
  (interactive)
  (let (pos)
    (setq pos (point))
    (beginning-of-buffer)
    (replace-regexp "//[[:blank:]]*\\(.*\\)" "/* \\1 */")
    (goto-char pos)
  )
  ;;(setq abbrev-mode t)
)

(defun my-c-mode-font-lock-if0 (limit)
   (save-restriction
     (widen)
     (save-excursion
       (goto-char (point-min))
       (let ((depth 0) str start start-depth)
         (while (re-search-forward "^\\s-*#\\s-*\\(if\\|else\\|endif\\)" limit 'move)
           (setq str (match-string 1))
           (if (string= str "if")
               (progn
                 (setq depth (1+ depth))
                 (when (and (null start) (looking-at "\\s-+0"))
                   (setq start (match-end 0)
                         start-depth depth)))
             (when (and start (= depth start-depth))
               (c-put-font-lock-face start (match-beginning 0) 'font-lock-comment-face)
               (setq start nil))
             (when (string= str "endif")
               (setq depth (1- depth)))))
         (when (and start (> depth 0))
           (c-put-font-lock-face start (point) 'font-lock-comment-face)))))
nil)

(defun my-c-mode-common-hook-if0 ()
   (font-lock-add-keywords
    nil
    '((my-c-mode-font-lock-if0 (0 font-lock-comment-face prepend))) 'add-to-end))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook-if0)
;;(add-hook 'c-mode-common-hook 'flyspell-prog-mode)


(setq auto-mode-alist (cons '(".*/*\.\\([ch]$\\|cpp$\\)" . my-c-mode)
       auto-mode-alist))
;; Linux C mode
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "linux")
  ;;hide the block you don't want to see
;;  (hs-minor-mode)
;;  (setq hide-ifdef-initially t)
;;  (hide-ifdef-mode)
;;  (setq c-basic-offset 4)
)

(defun legacy-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (my-c-mode)

  ;;hide the block you don't want to see
;;  (hs-minor-mode)
;;  (setq hide-ifdef-initially t)
;;  (hide-ifdef-mode)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
)

(setq auto-mode-alist (cons '(".*/*linux.*/+.*\.[chSs]$" . linux-c-mode)
                       auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md$" . emacs-lisp-mode)
         auto-mode-alist))
(setq auto-mode-alist (cons '("\\.patch$" . diff-mode)
         auto-mode-alist))
(setq auto-mode-alist (cons '("Makefile.inc" . makefile-mode)
         auto-mode-alist))
(setq auto-mode-alist (cons '("\\.bin$" . hexl-mode)
         auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rom$" . hexl-mode)
         auto-mode-alist))
(setq auto-mode-alist (cons '("\\.elf$" . hexl-mode)
         auto-mode-alist))
(setq auto-mode-alist (cons '("\a\.out$" . hexl-mode)
         auto-mode-alist))

(custom-set-variables
 '(verilog-align-ifelse t)
 '(verilog-auto-delete-trailing-whitespace t)
 '(verilog-auto-inst-param-value t)
 '(verilog-auto-inst-vector nil)
 '(verilog-auto-lineup (quote all))
 '(verilog-auto-newline nil)
 '(verilog-auto-save-policy nil)
 '(verilog-auto-template-warn-unused t)
;; '(verilog-case-indent 4)
;; '(verilog-cexp-indent 4)
 '(verilog-highlight-grouping-keywords t)
 '(verilog-highlight-modules t)
;; '(verilog-indent-level 4)
;; '(verilog-indent-level-behavioral 4)
;; '(verilog-indent-level-declaration 4)
;; '(verilog-indent-level-module 4)
 ;; '(verilog-tab-to-comment t)
 '(verilog-tab-always-indent t)
 '(indent-tabs-mode t)
)
;;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
;;(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode


;; the following elisp code is use to
;; construct the compile command automatically.
;; so you don't need to write or choose the compile
;; command in the minibuffer.
;;
;; the rule is as following:
;; first, find GNUmakefile" "makefile" "Makefile"
;; if found, compile command is "make -C ."
;; else try to find one of make file in ".."
;; if found, compile command is "make -C .."
;; continue until reach the root directory "/"
;; if the make file still isn't found, try the
;; trivial compile command , that is,
;; if in the c++ mode:
;;         g++ -o your_source your_source.cc
;; if in the c mode
;;         gcc -o your_source your_source.c
;; if all is failed, do nothing.
;;
;; if you like this command, you can put the following
;; line in your .emacs
;;
(global-set-key (kbd "<f7>") 'smart-compile)
;;

(defun smart-compile ()
  (interactive)
  (setq compilation-scroll-output t)
  (let* ((file-name (buffer-file-name (current-buffer)))
         (candidate-make-file-name '("Makefile"))
         compile-command try-where-is-make-file)
    (setq try-where-is-make-file ".")
    (catch 'break
      (while (null compile-command)
;;        (if (dolist-if (f candidate-make-file-name)
;;                       (file-readable-p (concat try-where-is-make-file "/" f))
;;                       f)
        (if (file-readable-p (concat try-where-is-make-file "/" "Makefile"))
            (setq compile-command (concat "make -C " try-where-is-make-file)))
        (if (equal (expand-file-name try-where-is-make-file) "/")
            (throw 'break 1))
        (setq try-where-is-make-file (concat "../" try-where-is-make-file))))
    (setq compile-command
          (or compile-command
              (concat
               (cond
                ((eq major-mode 'c++-mode) "g++ -g -o ")
                ((eq major-mode 'c-mode) "gcc -g -o "))
               (file-name-sans-extension file-name)
               " "
               file-name)))
    (compile compile-command)))

;;(setq select-active-regions nil)
;;(setq mouse-drag-copy-region t)
;;(setq x-select-enable-primary t)
;;(setq x-select-enable-clipboard t)
;;**** Bind `mouse-yank-at-click' to mouse-2.

;;time stamp, add next in the first 8 lines of your file
;; Time-stamp: <>
;;(add-hook 'before-save-hook 'time-stamp)

(add-hook 'text-mode-hook
(lambda ()
  ;; Set dired-x buffer-local variables here.  For example:
   (setq tab-width 4)
  ))

;; control + mouse wheel up/down
(if (>= emacs-major-version 23)
    (progn
      (global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
      (global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)
    )
)

(defun smooth-scroll (increment)
  (scroll-up increment) (sit-for 0.05)
  (scroll-up increment) (sit-for 0.02)
  (scroll-up increment) (sit-for 0.02)
  (scroll-up increment) (sit-for 0.05)
  (scroll-up increment) (sit-for 0.06)
  (scroll-up increment)
)

(global-set-key [(mouse-5)] '(lambda () (interactive) (smooth-scroll 1)))
(global-set-key [(mouse-4)] '(lambda () (interactive) (smooth-scroll -1)))

(global-set-key (kbd "M-<f10>") 'toggle-menu-bar-mode-from-frame)
(global-set-key (kbd "C-x O")
  (lambda ()
   (interactive)
   (other-window -1)
   )
) ;; back one
;;(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
;;(global-set-key (kbd "<C-whell-down>") 'text-scale-decrease)

;;(defun gnu-asm-mode()
;;  "gnu mode comment"
;;  (interactive)
;;  (asm-mode)
;;  (setq asm-comment-char nil)
;;  (setq comment-start "/*")
;;  (setq comment-end "*/")
;;  (setq comment-start-skip  "/\\*+ *\\|//+ *")
;;)
;;(setq auto-mode-alist (cons '("\\.s$" gnu-asm-mode)
;;         auto-mode-alist))


;;(autoload 'idlwave-mode "idlwave" "IDLWAVE Mode" t)
;;(autoload 'idlwave-shell "idlw-shell" "IDLWAVE Shell" t)
;;(setq auto-mode-alist
;;      (cons '("\\.pro\\'" . idlwave-mode) auto-mode-alist))

(term "/bin/bash")

;; Run some shells
(if (>= emacs-major-version 22)
 (progn
 (shell)
 (rename-buffer "4th-shell")
 )
)
;;(add-hook 'comint-output-filter-functions
;;	  'comint-truncate-buffer)
(shell)
(rename-buffer "3rd-shell")
(shell)
(rename-buffer "2nd-shell")
(shell)
(rename-buffer "1st-shell")
(compilation-shell-minor-mode)

(if (try-require 'magit)
;; (add-hook 'magit-log-edit-mode
;;  (lambda ()
;;   (flyspell-mode)
;;  )
;; )
 (progn
;;  (add-hook 'magit-log-edit-mode-hook 'flyspell-mode)
  (global-set-key (kbd "C-x g") 'magit-status)
;;  (require 'rebase-mode)
 )
)

(try-require 'elp)
(try-require 'tabbar)
;(if (try-require 'auto-complete-config)
; (ac-config-default)
;)

(if (try-require 'xcscope)
 (progn
  (setq cscope-do-not-update-database t)
  (cscope-setup)
 )
)

(try-require 'ecb)


;;(setq comint-prompt-read-only nil)

;;(add-hook 'dired-load-hook
;;	  (lambda ()
;;	    (load "dired-x")
;;	    ;; Set dired-x global variables here.  For example:
;;	     (setq dired-guess-shell-gnutar "gtar")
;;	     (setq dired-x-hands-off-my-keys nil)
;;	    ))
;;(add-hook 'dired-mode-hook
;;(lambda ()
;;  ;; Set dired-x buffer-local variables here.  For example:
;;   (dired-omit-mode 1)
;;  ))

(defvar menu-bar-register-map
  (let
    ((map (make-sparse-keymap "Register functions")))
    (define-key map [point] (quote ("Save Position" . point-to-register)))
    (define-key map [jump] (quote ("jump to register" . jump-to-register)))
    (define-key map [separator-pos-register] (quote ("--")))
    (define-key map [copy] (quote ("copy to register" . copy-to-register)))
    (define-key map [insert] (quote ("insert register" . insert-register)))
    (define-key map [append] (quote ("append to register" . append-to-register)))
    (define-key map [prepend] (quote ("prepend to register" . prepend-to-register)))
    (define-key map [separator-text-register] (quote ("--")))
    (define-key map [number] (quote ("number to register" . number-to-register)))
    (define-key map [increment] (quote ("increment register" . increment-register)))
    map
  )
)
(defalias (quote menu-bar-register-map) menu-bar-register-map)
(define-key-after
 (lookup-key global-map [menu-bar edit])
  [register]
  '("Register" . menu-bar-register-map) 'bookmark)

(defvar menu-bar-rectangle-map
  (let
    ((map (make-sparse-keymap "Rectangle functions")))
    (define-key map [string] (quote ("string insert rectangle" . string-insert-rectangle)))
    (define-key map [yank] (quote ("yank rectangle" . yank-rectangle)))
    (define-key map [delete] (quote ("delete rectangle" . delete-rectangle)))
    (define-key map [kill] (quote ("kill rectangle" . kill-rectangle)))
    map
  )
)
(defalias (quote menu-bar-rectangle-map) menu-bar-rectangle-map)
(define-key-after
 (lookup-key global-map [menu-bar edit])
  [rectangle]
  '("Rectangle" . menu-bar-rectangle-map) 'bookmark)


(defvar menu-bar-sort-map
  (let
    ((map (make-sparse-keymap "Sort functions")))
    (define-key map [reverse]    (quote ("reverse region" .  reverse-region)))
    (define-key map [columns]    (quote ("sort columns" .    sort-columns)))
    (define-key map [fields]     (quote ("sort fields" .     sort-fields)))
    (define-key map [pages]      (quote ("sort pages" .      sort-pages)))
    (define-key map [paragraphs] (quote ("sort paragraphs" . sort-paragraphs)))
    (define-key map [lines]      (quote ("sort lines" .      sort-lines)))
    map
  )
)
(defalias (quote menu-bar-sort-map) menu-bar-sort-map)
(define-key-after
 (lookup-key global-map [menu-bar edit])
  [sort]
  '("Sort" . menu-bar-sort-map) 'bookmark)

(defvar menu-bar-narrow-map
  (let
    ((map (make-sparse-keymap "Narrow functions")))
    (define-key map [widen]  (quote ("widen" . widen)))
    (define-key map [page]   (quote ("narrow page" . narrow-to-page)))
    (define-key map [defun]  (quote ("narrow defun" . narrow-to-defun)))
    (define-key map [region] (quote ("narrow region" . narrow-to-region)))
    map
  )
)
(defalias (quote menu-bar-narrow-map) menu-bar-narrow-map)
(define-key-after
 (lookup-key global-map [menu-bar edit])
  [narrow]
  '("Narrow" . menu-bar-narrow-map) 'bookmark)

(define-key global-map [f11] 'previous-buffer) ;; my-buffer-prev
(define-key global-map [f12] 'next-buffer)     ;; my-buffer-next

;;(load-file "/home/baozheng/test/cedet-1.0pre6/common/cedet.el")
;;(global-ede-mode 1)
;;(semantic-load-enable-minimum-features)
;;(semantic-load-enable-code-helpers)
;;(require 'hexl)
;;(defvar menu-bar-hexl-edit-map
;;  (let
;;    ((map (make-sparse-keymap "hexl functions")))
;;    (define-key map [hex] (quote ("Insert hex" . hexl-insert-hex-char)))
;;    (define-key map [decimal] (quote ("Insert decimal" . hexl-insert-decimal-char)))
;;    (define-key map [move] (quote ("Move to" . hexl-goto-hex-address)))
;;    (define-key map [leave] (quote ("Leave" . hexl-mode-exit)))
;;    map
;;  )
;;)
;;(defalias (quote menu-bar-hexl-edit-map) menu-bar-hexl-edit-map)

;;(load "emacs-wiki")

;; Set some info face colors
(load "info")
(set-face-foreground 'info-xref "red")
(set-face-foreground 'info-node "purple")
;; Set manual face color
(setq Man-overstrike-face 'info-node)
(setq Man-underline-face 'info-xref)
(setq Man-notify-method 'pushy)
;; idle for 5 minutes before zone(screen save)
;;(setq zone-idle 900)
;;(zone)
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; =================================================================
;; The end of .emacs
;; =================================================================

(if (>= emacs-major-version 22)
 (desktop-save-mode 1)
 (progn
  (desktop-load-default)
  (desktop-read)
 )
)
;;(setq inhibit-startup-message t)


;;mkfontscale
;;mkfontdir
;; run # fc-cache -fv ~/.fonts

;;(define-key text-mode-map [menu-bar words]
;;              (cons "word movement" (make-sparse-keymap "word movement")))
;;(define-key text-mode-map [menu-bar words forward]
;;              (cons "forward" 'forward-word))
;;
;;(define-key text-mode-map [menu-bar words backward]
;;              (cons "backward" 'backward-word))
;;
;; for X-win32
;;xmodmap -e "add mod1 = Meta_L"
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )
;;(insert "xwidgetdemo<<< a button. another button\n") (goto-char (point-min)) (put-text-property (point) (+ 1 (point)) 'display '(xwidget :xwidget-id 1 :type 'webkit-osr :title "1" :width 40 :height 50))
