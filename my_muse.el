;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2009_06_09
;; For Muse
(setq load-path (append load-path (list "~/elisp/muse-latest/lisp/")))

(require 'muse-mode)     ; load authoring mode
(require 'muse-html)     ; load publishing styles I use
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-docbook)
(require 'muse-project)

;; delete 2010_01_13 muse instead
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Emacs Wiki
;; (setq load-path (append load-path (list "~/elisp/emacs-wiki-2.72/")))
;; (require 'emacs-wiki)

;; ;; ;; chinese support
;; ;; (setq emacs-wiki-charset-default "gb2312")
;; ;; (setq emacs-wiki-coding-default "gb2312")
;; ;; (setq emacs-wiki-meta-charset "gb2312")           
;; ;; (setq emacs-wiki-meta-content-coding "gb2312")

;; ;; ;;设置默认的css
;; ;; (setq emacs-wiki-style-sheet 
;; ;; "<link rel=\"stylesheet\" type=\"text/css\" 
;; ;; href=\"../css/default.css\">") 

;; ;; ;;保存时自动发布网页及索引
;; ;; ;;;_+ Automatically publish files AND INDEX upon saving
;; ;;  (defun sacha-emacs-wiki-auto-publish ()
;; ;;    (when (derived-mode-p 'emacs-wiki-mode)
;; ;;      (unless emacs-wiki-publishing-p
;; ;;        (let ((emacs-wiki-publishing-p t)
;; ;;              (emacs-wiki-after-wiki-publish-hook nil))
;; ;;     (emacs-wiki-publish-this-page)(emacs-wiki-publish-index)))))
;; ;;  (add-hook 'emacs-wiki-mode-hook
;; ;;            (lambda () (add-hook 'after-save-hook
;; ;;                                 'sacha-emacs-wiki-auto-publish
;; ;;                                 nil t)))

;; ;; ;;发布索引的命令为: emacs-wiki-publish-index , 我也给加到上边的代码里去了
;; ;; ;;快捷键预览页面及源码
;; ;;    ;;预览当前的页面
;; ;;    ;;用C-c C-h能够在浏览器中预览本地页面
;; ;;    ;;用C-c C-c在Emacs中预览生成的HTML页面源码。
;; ;;  (defun emacs-wiki-preview-source ()
;; ;;   (interactive)
;; ;;   (emacs-wiki-publish-this-page)
;; ;;   (find-file (emacs-wiki-published-file)))

;; ;;  (defun emacs-wiki-preview-html ()
;; ;; (interactive)
;; ;; (emacs-wiki-publish-this-page)
;; ;; (browse-url (emacs-wiki-published-file)))

;; ;;  (add-hook 'emacs-wiki-mode-hook
;; ;;   (lambda ()
;; ;;     (define-key emacs-wiki-mode-map 
;; ;;          (kbd "C-c C-h") 'emacs-wiki-preview-html)
;; ;;     (define-key emacs-wiki-mode-map 
;; ;;          (kbd "C-c C-c") 'emacs-wiki-preview-source)
;; ;; ))


;; ;; ;; Insert TAG
;; ;; ;; 这里我用的快捷键是C-c C-t (tag),由于这个快捷键在emacs-wiki.el中定义的是emacs-wiki-publish-this-pag，而我用保存自动发布故用不到这个快捷键，所以就自定义掉了。

;; ;; ;; Insert TAG  , using C-c C-t
;; ;; (defun auto-insert-tags ()
;; ;;   (interactive)
;; ;;   (insert "<")
;; ;;   (let ((tag (completing-read "tag: "
;; ;;                               '("example"
;; ;;                                 "src"))))
;; ;;     (when (not (string= tag ""))
;; ;;       (insert tag ">\n")
;; ;;       (save-excursion
;; ;;         (insert "\n</" tag ">")))))

;; ;; (add-hook 'emacs-wiki-mode-hook (lambda ()
;; ;; (define-key emacs-wiki-mode-map (kbd "C-c C-t") 'auto-insert-tags)
;; ;; ))



;; ;;add from "标  题: [合集] 使用 Wiki 做笔记"
;; ;; Have bug for New File In 
;; ;; Comment: Usage for Emacs Wiki
;; ;; 1, put *.txt file in the ~/Wiki/
;; ;; 2, open one of them,  Jump to an index of all the Wiki pages. change *.txt to *.txt.html and save it to WelcomePage
;; ;; 3, C-c C-p Publish any Wiki pages that have changed as HTML.
;; ;; 4, open one of them, M-x emacs-wiki-index,change * to *.html and save to WikiIndex.

;; (add-hook 'emacs-wiki-mode-hook
;;       (lambda ()
;;         (define-key emacs-wiki-mode-map (kbd "C-c C-h") 'emacs-wiki-preview-ht
;; ml)
;;         (define-key emacs-wiki-mode-map (kbd "C-c C-c") 'emacs-wiki-preview-so
;; urce)
;;         (define-key emacs-wiki-mode-map (kbd "C-c C-v") 'emacs-wiki-change-pro
;; ject)

;; ))

;; ;; (setq emacs-wiki-grep-command "glimpse -nyi "%W"")

;; (setq emacs-wiki-publishing-directory "publish")

;; (setq emacs-wiki-directories '("~/WiKi"))
;; (setq emacs-wiki-meta-charset "gb2312")
;; ;;(setq emacs-wiki-style-sheet    "")

;; (setq emacs-wiki-inline-relative-to 'emacs-wiki-publishing-directory)

;; (defun emacs-wiki-preview-source ()
;;   (interactive)
;;   (emacs-wiki-publish-this-page)
;;   (find-file (emacs-wiki-published-file)))

;; (defun emacs-wiki-preview-html ()
;;   (interactive)
;;   (emacs-wiki-publish-this-page)
;;   (browse-url (emacs-wiki-published-file)))

;; (setq emacs-wiki-projects
;;       `(("default" . ((emacs-wiki-directories . ("~/WiKi"))))
;;         ("work" . ((fill-column . 65)
;;                  (emacs-wiki-directories . ("~/workwiki/"))))))

;; ;; (setq emacs-wiki-style-sheet
;; ;;       ""<link rel="stylesheet" type="text/css" href="core.css">")

;; ;; ;;可以让你的网页不那么呆板

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;End Wiki;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Muse Project Setting
     (setq muse-project-alist
           '(("Website" ("~/Pages" :default "index")
              (:base "xhtml" :path "~/public_html"))
             (("Projects" ("~/Projects" :default "index")
              (:base "xhtml"
                     :path "~/public_html/projects"
                     :exclude "/TopSecret")
              (:base "pdf"
                     :path "~/public_html/projects/pdf"
                     :exclude "/TopSecret")))
             ("Plans" ("~/Plans"
                       :default "TaskPool"
                       :major-mode planner-mode
                       :visit-link planner-visit-link)
              (:base "planner-xhtml"
                     :path "~/public_html/plans"))))

(setq muse-publishing-directives t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;2009_08_03 Muse Try Blog
    ;;;; muse xhtml header
    (setq muse-xhtml-header "
    <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">
    <html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">
    <head>

    <!-- change this to the title you want to appear in browser title bar -->

    <title>Kevin Tian's Blog</title>
    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
    <meta name=\"author\" content=\"dreamLogic\" />
    <meta name=\"description\" content=\" \" />
    <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" />
    </head>

    <body>
<!-- Kevin Tian: add logo --> 
<div id=\"wrap\">

<div id=\"sidebar\">
<!-- change logo to my photo -->
<!-- <img src=\"logo.gif\" alt=\"my logo\" /> -->
<!-- ftp can not upload gif file -->
<!-- <img src=\"Picture/logo2.gif\" alt=\"my photo\" /> -->
<img src=\"Picture/kevin.jpg\" alt=\"my photo\" />
<br />

    <div id=\"navcontainer\">
    <ul id=\"navlist\">

    <!-- put your navigation links and text here -->

    <li><a href=\"index.html\">Home</a></li>
<!--    <li><a href=\"Article.html\">Article</a></li> -->
    <li><a href=\"Baby.html\">Baby</a></li>
    <li><a href=\"BBS.html\">BBS Digest</a></li>
    <li><a href=\"Blog.html\">Blog</a></li>
    <li><a href=\"Book.html\">Book</a></li>
    <li><a href=\"Development.html\">Development</a></li>
<!--    <li><a href=\"English.html\">English</a></li> -->
<!--    <li><a href=\"Family.html\">Family</a></li> -->
    <li><a href=\"Health.html\">Health</a></li>
    <li><a href=\"IT.html\">IT</a></li>
    <li><a href=\"Joke.html\">Joke</a></li>
    <li><a href=\"Journal.html\">Journal</a></li>
    <li><a href=\"Links.html\">Links</a></li>
<!--    <li><a href=\"Living.html\">Living</a></li> -->
    <li><a href=\"Movie.html\">Movie</a></li>
    <li><a href=\"Music.html\">Music</a></li>
    <li><a href=\"Picture.html\">Picture</a></li>
<!--    <li><a href=\"Resume.html\">Portfolio</a></li> -->
<!--    <li><a href=\"Resource.html\">Resource</a></li> -->
<!--    <li><a href=\"Sport.html\">Sport</a></li> -->
    <li><a href=\"Personal.html\">Self-Introduction</a></li>
<!--    <li><a href=\"Temp.html\">Temp</a></li> --> 
<!--    <li><a href=\"Thinking.html\">Thinking</a></li> -->
    <li><a href=\"Tool.html\">Tool</a></li>
    <li><a href=\"Contact.html\">Contact</a></li>
<!--    <li><a href=\"http://dabaotian.spaces.live.com\">MSN Blog</a></li> -->

    <!-- end navigation -->

    </ul>
    </div>
<!-- end sidebar -->
</div>


    <!-- left container --> 
    <div id=\"container\">

    <div id=\"header\"></div>

    <!-- the title that appear in the page header -->

    <div id=\"title\">Kevin Tian's Blog<br />made by Emacs Muse</div>


    <div class=\"content\">
    <!-- Page published by Emacs Muse begins here -->\n
    ")

    ;;;;  muse xhtml-footer
    (setq muse-xhtml-footer "
    <!-- end page content -->

    </div>

    <div id=\"footer\"><br />

    <!-- it'd be super if you left this link intact -->

    <a href=\"http://dabaotian.spaces.live.com/\">My msn spaces</a>

    </div>


    <!-- end page content -->
    </div>
    <!-- end container -->
    </div>
    <!-- end wrap --> 

<!-- Step1 of install disqus, BEGIN -->
<div id=\"disqus_thread\"></div>
<script type=\"text/javascript\">

  (function() {
   var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
   dsq.src = 'http://kevintiansblog.disqus.com/embed.js';
   (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  })();
</script>
<noscript>Please enable JavaScript to view the <a href=\"http://disqus.com/?ref_noscript=kevintiansblog\">comments powered by Disqus.</a></noscript>
<a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>
<!-- Step1 of install disqus, END, Kevin Tian -->


<!-- Step2 of install disqus, Begin, Kevin Tian -->
<script type=\"text/javascript\">
var disqus_shortname = 'kevintiansblog';
(function () {
  var s = document.createElement('script'); s.async = true;
  s.src = 'http://disqus.com/forums/kevintiansblog/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>
<!-- Step2 of install disqus, END -->

    </body>
    </html>
    ")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Muse color inline image options
(setq muse-color-inline-images t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'outline-mode-hook 'turn-on-muse-list-edit-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; could not take effect on foot of page
;; <!-- Google Reader Sharing Begin -->
;; <script type=\"text/javascript\" src=\"http://www.google.com/reader/ui/publisher-en.js\"></script>
;; <script type=\"text/javascript\" src=\"http://www.google.com/reader/public/javascript/user/17509614808973105448/state/com.google/broadcast?n=5&callback=GRC_p(%7Bc%3A%22blue%22%2Ct%3A%22kevin.tian.balance's%20shared%20items%22%2Cs%3A%22false%22%2Cn%3A%22true%22%2Cb%3A%22false%22%7D)%3Bnew%20GRC\"></script>
;; <!-- Google Reader Sharing End -->
