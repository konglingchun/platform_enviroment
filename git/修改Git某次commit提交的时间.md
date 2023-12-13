## 改某次提交的作者日期和提交者日期

```
GIT_AUTHOR_DATE
GIT_COMMITTER_DATE
```

如果要更改某次(可以是最近一次也可以是非最近一次)提交的作者日期和提交者日期，可以使用交互式rebase：

- 执行git rebase -i COMMIT_SHA ， 此COMMIT_SHA为待修改日期的commit的前一个commit的commit sha
- 在vi弹出交互信息中将待修改日期的commit前的pick修改为e
- 执行日期修改命令 GIT_COMMITTER_DATE="2017-10-08T09:51:07" git commit --amend --date="2017-10-08T09:51:07"
- 执行 git rebase --continue转到下一个commit
- 重复此过程，直到修改所有提交。 通过git status可查看进展。

## 只修改上次提交的时间

date --iso-8601=seconds
2021-12-21T15:21:03+08:00

date --iso-8601=ns
2021-12-21T15:21:35,416856050+08:00

GIT_COMMITTER_DATE="2017-10-08T09:51:07" git commit --amend --date="2017-10-08T09:51:07"
