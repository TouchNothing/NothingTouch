# GIT使用
## 1.创建版本库

- 初始化一个GIT库， 用`GIT INIT` 命令
- 添加修改到库中，用 1. `GIT ADD <FILE1><FILE2><...> `  添加文件到暂缓区 

​                                           2. `GIT COMMIT -M <MESSAGE>` 把暂缓区 的文件添加到当前分支

-----

## 2. GIT的基本功能
*已向库提交文件FILE. TXT， 并进行了修改*

- 执行`GIT STATUS` ，得到库的状态(FILE. TXT被修改但尚未提交
- 执行`GIT DIFF`,得到FILE. TXT的修改内容
- 执行`GIT LOG`，显示从最近到最远的提交日志(最后修改的到最早修改的
- 执行`GIT RESET --hard HEAD~`，返回上一个版本。  (' GIT RESET --HARD 1049 //版本ID
- 执行`GIT RESET HEAD <FILE> `，可以把缓存区的的修改撤销，修改重新回到工作区
- 执行`GIT REFLOG`，显示用户执行的每个命令记录，可以用这个命令查找版本ID
- 执行`GIT CHECKOUT -- README. TXT`，把README. TXT文件在工作区的修改(删除)全部撤销
- 执行`RM TEST. TXT`,在工作区删除TEST. TXT文件
- 执行`GIT RM TEST.TXT`,在缓存区删除TEST. TXT文件。使用该命令后要`GIT COMMIT - M<MESSAGE>`提交修改

-----

## 3. GIT的结构

- 工作区和暂缓区:工作区就是电脑里的目录
- 暂缓区(stage)就是`GIT ADD <FILE>` 之后文件在正式提交前暂存的地方
- 分支(master)就是` GIT COMMIT -M <MESSAGE>`之后文件正式提交的地方

-----

## TIP:

- 每次修改之后只有执行了GIT ADD的修改才可以继续执行`GIT COMMIT 一M <MESSAGE> `，没有ADD操作过的修改是不会提交的，只存留在工作区。

- HEAD[^1]  
  [ 1] :HEAD是指向最新版本的指针。