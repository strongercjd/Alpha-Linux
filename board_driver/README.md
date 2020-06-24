# Alpha-Linux
裸机编译步骤

给予imxdownload可执行权限：

```
chmod 777 imxdownload
```

烧写：

```
./imxdownload led.bin /dev/sdc
```

Imxdownlaod会向led.bin添加一个头部，生成新的load.imx文件，这个load.imx文件就是最终烧写到SD卡里面去的。

备注：如果烧写速度在几十MB/S左右的话，那么可能意味着烧写失败，而且因为SD卡没有找到而导致的烧写失败，这个问题只能重启Ubuntu解决。



设置Alpha-Linux为SD卡启动

| 1    | 2    | 3    | 4    | 5    | 6    | 7    | 8    |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| 1    | 0    | 0    | 0    | 0    | 0    | 1    | 0    |

