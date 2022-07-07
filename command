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
