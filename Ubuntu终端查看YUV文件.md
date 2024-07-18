YUV格式编码的图片并不能使用一般的图像软件打开，在Linux下需要安装ffmpeg。

#安装ffmpeg
$sudo apt install ffmpeg

#查看图片，需要注意的是YUV图像的信息中并没有存储宽和高，所以在打开时需要指定图像的宽和高。
$ffplay [-f rawvideo] -video_size WxH dest.yuv

#将图像转化为YUV格式
$ffmpeg -i src.xxx -s WxH [-pix_fmt yuv420p] dest.yuv
