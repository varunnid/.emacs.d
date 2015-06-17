(require 'package)

(setq package-list '(
  ac-html            
  ac-js2             
  ack-and-a-half     
  ag                 
  async              
  auto-complete      
  autopair           
  color-theme        
  color-theme-sol... 
  csharp-mode        
  dash               
  discover           
  discover-js2-re... 
  eimp               
  ensime             
  epl                
  flycheck           
  framesize          
  git-commit-mode    
  git-rebase-mode    
  haskell-mode       
  helm               
  helm-ag            
  helm-projectile    
  ido-completing-... 
  ido-ubiquitous     
  ido-vertical-mode  
  js2-mode           
  js2-refactor       
  js3-mode           
  key-chord          
  let-alist          
  magit              
  makey              
  multiple-cursors   
  nodejs-repl        
  omnisharp          
  org                
  org-present        
  org-presie         
  paredit            
  pkg-info           
  popup              
  projectile         
  s                  
  sbt-mode           
  scala-mode2        
  simple-httpd       
  skewer-mode        
  slime              
  slime-js           
  slime-repl         
  tern               
  tern-auto-complete 
  web-beautify       
  yasnippet ))

(defun install-packages()
  (interactive)
  (unless package-archive-contents (package-refresh-contents))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

(provide 'packages)
