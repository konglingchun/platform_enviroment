# linux下查看主板内存槽与内存信息

### 1、查看内存槽数、那个槽位插了内存，大小是多少 

sudo dmidecode|grep -P -A5 "Memory\s+Device"|grep Size|grep -v Range 

### 2、查看最大支持内存数 

sudo dmidecode|grep -P 'Maximum\s+Capacity' 

### 3、查看槽位上内存的速率，没插就是unknown。 

sudo dmidecode|grep -A16 "Memory Device"|grep 'Speed'

### dmidecode

dmidecode以一种可读的方式dump出机器的DMI(Desktop Management Interface)信息。这些信息包括了硬件以及BIOS，既可以得到当前的配置，也可以得到系统支持的最大配置，比如说支持的最大内存数等。

DMI有人也叫SMBIOS(System Management BIOS)，这两个标准都由DMTF(Desktop Management Task Force)开发。

dmidecode的输出格式一般如下：
````txt
 Handle 0x0002
  DMI type 2, 8 bytes
  Base Board Information
   Manufacturer:Intel
   Product Name: C440GX+
   Version: 727281-0001
   Serial Number: INCY92700942
````

其中的前三行都称为记录头(recoce Header), 其中包括了：
1、recode id(handle): DMI表中的记录标识符，这是唯一的,比如上例中的Handle 0x0002。
2、dmi type id: 记录的类型，譬如说:BIOS，Memory，上例是type 2，即"Base Board Information"
3、recode size: DMI表中对应记录的大小，上例为8 bytes.（不包括文本信息，所有实际输出的内容比这个size要更大。）
记录头之后就是记录的值：
4、decoded values: 记录值可以是多行的，比如上例显示了主板的制造商(manufacturer)、model、version以及serial Number。

dmidecode的使用方法

1. 最简单的的显示全部dmi信息：
dmidecode
这样将输出所有的dmi信息，你可能会被一大堆的信息吓坏，通常可以使用下面的方法。

2.更精简的信息显示：
dmidecode -q
-q(--quite) 只显示必要的信息，这个很管用哦。

3.显示指定类型的信息：
通常我只想查看某类型，比如CPU，内存或者磁盘的信息而不是全部的。这可以使用-t(--type TYPE)来指定信息类型：
dmidecode -t bios
dmidecode -t bios, processor (这种方式好像不可以用，必须用下面的数字的方式)
dmidecode -t 0,4  (显示bios和processor)

