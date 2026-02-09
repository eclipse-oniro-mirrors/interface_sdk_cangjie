# 仓颉CJO序列化和反序列化指导

## 准备工作
**flatbuffers编译器`flatc`**：可以直接从ohos预下载目录`prebuilts/cangjie_sdk/build-tools/flatc`获取。

## JSON转换为cjo
使用`flatc`命令将JSON文件转换为Flatbuffer二进制文件。在命令行中执行以下命令：
```bash
flatc -b ModuleFormat.fbs xxx.cjo.json -o xxx.cjo
```
该命令会根据`ModuleFormat.fbs`文件的定义，将`xxx.cjo.json`文件中的数据序列化为Flatbuffer二进制格式cjo文件，并生成一个`xxx.cjo`文件。

## cjo转换为JSON
使用`flatc`命令将Flatbuffer二进制文件转换为JSON文件。在命令行中执行以下命令：
```bash
flatc --raw-binary -t ModuleFormat.fbs -- xxx.cjo
```
该命令会根据`ModuleFormat.fbs`文件的定义，将`xxx.cjo`文件中的Flatbuffer二进制数据反序列化为JSON格式，并生成一个`xxx.cjo.json`文件。
