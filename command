1. 添加文件：
  git add readme.txt
  git commit -m 'git command'

2. 查看文件状态：
  git status

3. 历史记录：
  git log
  git log --pretty=oneline

4. 回溯上版本：
  git reset --hard HEAD^
  从git log中可以查看版本号，如果要回到某个版本可用命令：
  git reset --hard a1352...(版本号)
  git reflog 可查看记录的每次命令。

5. 暂存区概念：
  git add 把文件添加到暂存区(stage)
  git commit 把暂存区的所有内容提交到当前分支（branch）

6. 撤销修改
  git checkout -- readme.txt
  把readme.txt文件在工作区的修改全部撤销，
  总之，就是让这个文件回到最近一次git commit 或 git add的状态。
  若修改只是添加到暂存区，还没被提交。
  可用命令：
  git reset head <file>
  把暂存区的修改撤销，重新放回工作区。
  git reset 既可以回退版本，也可以把暂存区的修改回退到工作区
 
7. 删除文件
  git rm <file>
  git commit -m 'remove <file>'
  若误删 rm <file>，可用
  git checkout -- <file>
  git checkout 其实就是用版本库中的版本替换工作区的版本，无论工作区是修改还是删除，都可一键还原。

8. 远程仓库
  GitHub
  创建SSH Key:(Git与GitHub是通过SSH加密)
  ssh-keygen -t rsa -C "youremail@example.com"
  GitHub上创建账号并创建新仓库“Create repository”
  (1) 与本地的Git仓库关联：
  在本地的仓库‘github-learning’下运行：
  git remote add origin git@github.com:xefang/GitHub
  (2) 将本地库的所有内容推送到远程GitHub上：
  git push -u origin master
  推送后远程库的内容与本地一样
  之后，只要本地做了提交，通过命令：
  git push origin master
  把本地master分支的最新修改推送至GitHub上。
  
  git remote -v
  查看远程库信息

  删除远程库：
  git remote rm <name>
  这里的删除其实是解除了本地和远程的绑定关系，并不是物理上删除了远程库。远程库本身并没有任何改动。要真正删除远程库，需要登录到GitHub，在后台页面找到删除按钮再删除。

9. 从远程库克隆
  先在GitHub上创建新仓库以及新文件或者copy别人的。
  用命令git clone克隆一个本地库：
  git clone git@github.com:xefang/command.git
  即可

10. 创建与合并分支
  HEAD严格说不是指向提交，而是指向当前分支master，master才是指向提交。
  分支的作用：多人合作或者多向编辑
  创建并切换到dev分支：
  git checkout -b dev
  相当于两条命令：
  git branch dev
  git checkout dev

  用命令git branch可以查看当前分支，当前分支有*号。
  合并分支：
  git merge dev
  该命令用于合并指定分支到当前分支，即合并dev分支到当前分支master。
  删除分支：
  git branch -d dev

  除了用git checkout 切换分支，还可以git switch切换分支。
  创建并切换到dev分支：
  git switch -c dev
  直接切换到已有的dev分支：
  git switch dev
