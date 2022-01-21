## 安装

```shell
sudo apt install imagemagick
```

## 参考文档

https://blog.csdn.net/lpwmm/article/details/83313459

```shell
sudo vim /etc/ImageMagick-6/policy.xml

78 行修改如下：
<policy domain="coder" rights="read/write" pattern="PDF" />
<policy domain="coder" rights="read/write" pattern="LABEL" /> 
```

## 生成pdf

```shell
convert 1.jpg +compress 1.pdf
convert 1.jpg 2.jpg test.pdf
```

## 裁剪图片

```shell
#960为宽，680为高
#360为x起点
#280为y起点
convert 001.png -crop 960x680+360+280 dest001.png
```

```shell
for i in `ls`
do
echo $i
convert $i -crop 960x680+360+280 "dest$i"
done
```