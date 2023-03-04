## 通用git push

```
echo $(git remote -v | awk '{print $1}' | head -n 1) HEAD:refs/for/$(git branch -vv | grep -E '^*' | awk -F ' ' '{print $4}' | awk -F '[\\[\\]:/]' '{print $3}')
```

