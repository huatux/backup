ssh-keygen -t rsa -C "key@github"
git config --global user.name 用户名
git config --global user.email EMAIL
#测试是否链接成功
ssh -i ~/key -T git@github.com
ssh-add ~/key
#mkdir /tmp/git && cd /tmp/git
################初始化####################
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:USERNAME/repositories.git
git push -u origin master
########################################
git clone git@github.com:USERNAME/repositories.git
git add XXXX
git commit -m "commit"
git push origin


提示：更新被拒绝，因为您当前分支的最新提交落后于其对应的远程分支
提示：再次推送前，先与远程变更合并（如 'git pull'）
git push origin +master
