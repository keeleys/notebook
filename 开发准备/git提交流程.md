# git 工作流程

## 下载代码

```
git clone git@xxxx.xxx.xxx
```

## 本地新增develop分支，并且跟远程做关联
```
git checkout -b develop origin/develop
```

## 提交到本地

```
git add .
git commit -m '你自己修改的内容'
```

## 提交前拉取当前分支最新代码

```
git pull
```

## 提交你的分支
> 从当前deelop提交到远程新建的`keeley-course-1019`分支,该名称可以自定义

```
git push origin develop:keeley-course-1019
```

## merge到远处develop

> 打开gitlab主页 找到你提交的分支名,提交合并到主干。
