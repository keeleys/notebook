## 忽略提交文件
```
git update-index --assume-unchanged
```

## 取消忽略
```
git update-index --no-assume-unchanged
```

## 查看所有忽略的文件
```
git ls-files -v | grep "^[[:lower:]]"
```