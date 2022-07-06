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
