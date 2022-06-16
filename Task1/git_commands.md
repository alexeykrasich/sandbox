  157  git clone https://github.com/alexeykrasich/sandbox.git
   
  158  ll
  
  159  cd sandbox/
  
  160  ll
  
  161  git status
  
  162  ssh keygen
  
  163  ssh-keygen
  
  164  cat ~/.ssh/id_rsa.pub
  
  165  git remote -v
  
  166  git remote set-url origin git@github.com:alexeykrasich/sandbox.git
  
  167  git remote -v
  
  168  ll
  
  169  git status 
  
  170  mkdir Task1
  
  171  git status 
  
  172  echo "# sandbox" > Task1/README.md
  
  173  cat Task1/README.md 
  
  174  git config --global user.name "Alexey Krasichonak"
  
  175  git config --global user.email "alexey.krasich@gmail.com"
  
  176  ll ~
  
  177  cat ~/.ssh
  
  178  cd ~/.ssh
  
  179  ll
  
  180  cat ~/.gitconfig 
  
  181  cd -
  
  182  ll
  
  183  git status
  
  184  git add *
  
  185  git status
  
  186* 
  
  187  git commit -m "New File README.md"
  
  188  git status
  
  189  git log
  
  190  man git push
  
  191  git push origin
  
  192  git checkout -b dev
  
  193  echo "First file in a dev branch" > TestFile1.txt
  
  194  git status
  
  195  git add .
  
  196  git commit -m "Test File Dev Branch"
  
  197  git push origin
  
  198  git status
  
  199  git log
  
  200  git status
  
  201  git push --set-upstream origin dev
  
  202  git checkout -b %USERNAME-new_feature
  
  203  git branch 
  
  204  git checkout master
  
  205  git branch -d %USERNAME-new_feature 
  
  206  git status
  
  207  git checkout %USERNAME-new_feature 
  
  208  git status
  
  209  git checkout master
  
  210  git branch -d %USERNAME-new_feature 
  
  211  git branch -D %USERNAME-new_feature 
  
  212  git branch 
  
  213  git checkout -b alexeykrasich-new_feature
  
  214  git branch
  
  215  touch README.md
  
  216  git status
  
  217  touch .gitignore
  
  218  ll
  
  219  echo 
  
  220  echo ".*" >> .gitignore 
  
  221  cat .gitignore 
  
  222  git status
  
  223  echo "test file wich begins with ." > .test
  
  224  ll
  
  225  git status
  
  226  echo "test file wich begins with q" > q.test
  
  227  git status
  
  228  rm q.test
  
  229  git status
  
  230  rm .test
  
  231  git status
  
  232  ll
  
  233  git add *
  
  234  git status 
  
  235  git commit -m "Added root README.md"
  
  236  git branch
  
  237  git push origin
  
  238  git push --set-upstream origin alexeykrasich-new_feature
  
  239  git branch
  
  240  git status
  
  241  git checkout dev
  
  242  git status
  
  243  git checkout master
  
  244  ll
  
  245  git checkout dev
  
  246  ll
  
  247  git origin/master
  
  248  git --help
  
  249  git branch
  
  250  ll
  
  251  git fetch -p
  
  252  ll
  
  253  git branch
  
  254  git checkout master 
  
  255  ll
  
  256  git pull
  
  257  ll
  
  258  git checkout dev
  
  259  git pull
  
  260  git checkout alexeykrasich-new_feature 
  
  261  clear
  
  262  git branch
  
  263  ll
  
  264  touch "<h1>SendBox .</h1>" >> README.md 
 
  265  echo "<h1>SendBox .</h1>" >> README.md 
  
  266  ll
  
  267  echo "# SandBox" > README.md 
  
  268  echo "## README" >> README.md 
  
  269  cat README.md 
  
  270  git add *
  
  271  git status
  
  272  git commit -m "Filled the README"
  
  273  git status
  
  274  ll
  
  275  git revert HEAD
  
  276  ll
  
  277  git log
  
  278  git checkout master
  
  279  git log > log.txt
  
  280  git log
  
  281  clear
  
  282  cat log.txt
  
  283  ll
  
  284  git remote -v
  
  285  git branch 
  
  286  git branch -d alexeykrasich-new_feature 
  
  287  git branch -D alexeykrasich-new_feature 
  
  288  git push origin :alexeykrasich-new_feature 
  
  289  git checkout dev
  
  290  history
  
  291  history | tail -n 140 > git_commands.md
