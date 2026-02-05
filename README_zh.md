# 仓颉API声明文件公共仓(beta特性)

## 简介

仓颉API声明文件公共仓用于存储和管理仓颉各个子系统对外的API声明文件，同时提供对应的SDK构建工具，支撑Openharmony SDK中仓颉API的构建。

当前仓颉接口仅支持standard设备。

## 系统架构

**图 1** 仓颉API公共仓架构图

![仓颉API公共仓架构图](figures/interface_sdk_cangjie_architecture_zh.png)

如架构图所示：

- **API声明:** 仓颉OHOS模块以及仓颉标准库API对外声明文件。
- **Kit声明:** 仓颉Kit模块对外声明文件。
- **build-tools:** SDK构建相关工具集，主要包含以下工具：
  - **Cjo生成工具链:** 主要由三部分组成：
    - 仓颉接口的文本化描述文件: 包含仓颉API各模块的接口信息、类型定义、函数声明等元数据。构建SDK时，利用flatc工具以及flatbuffers schema文件描述的数据结构，将仓颉接口文本化描述文件序列化成仓颉API各个模块的cjo文件。

      有关仓颉cjo以及仓颉cjo和JSON序列化和反序列化构建过程的详细介绍，请参考[仓颉cjo](https://gitcode.com/Cangjie/cangjie_docs/blob/08234c9e52cd55a6f1a2521c65f39745fa6d64a3/docs/dev-guide/source_zh_cn/Appendix/cjo_artifacts.md)和[仓颉cjo序列化和反序列化指导](docs/cangjie_cjo_serialization_and_deserialization_guide.md)。
    - flatbuffers schema文件。
    - python/gn相关构建脚本。

  - **API Mock库生成工具**：包含一个空实现的ohos.mock模块以及相关构建脚本，支撑构建SDK生成仓颉API各个模块的空实现动态库对象。

架构图中依赖部件引入说明：

- cangjie_ark_interop: 仓颉SDK中macro包依赖仓颉-ArkTS互操作接口仓构建互操作宏。
- arkui_cangjie_wrapper: 仓颉SDK中macro包依赖ArkUI开发框架仓颉接口仓构建状态管理宏。
- flatbuffers: 是一个高内存效率的跨平台序列化库，提供flatc工具，支撑仓颉SDK构建仓颉cjo文件。

代码目录结构：
```
interface/sdk_cangjie
├── api
│   └── xxxKit                   # Kit 具体名字，比如Cangjie, BasicServiceKit等
│       └── xxx.cj.d             # 各kit具体模块接口文件，存放路径以kit实际文件列表为准
├── kits                         # 各kit对外统一声明文件
│   └── xxx.cj.d
├── build-tools                  # sdk 构建工具
│   ├── cjo                      # 构建 cjo 相关工具
│   ├── lib
│   │   └── mock                 # mock API库相关脚本                      
│   └── script                   # 构建SDK相关脚本
├── figures                      # README图片
├── docs
├── LICENSE
└── bundle.json
```

## 交付视图

**图 2** 仓颉SDK交付视图
![仓颉SDK交付视图](figures/interface_sdk_cangjie_delivery_view.png)

**ohos-sdk:**

- Openharmony SDK由js、ets、native、toolchains、previewer以及cangjie六个部分组成，本仓主要涉及cangjie部分。

**api:**

- lib包目前仅支持ohos相关的构建工具链，存放仓颉API动态库以及仓颉cjo文件。
  - ohos-aarch64-libs: 用于构建ohos-aarch64应用依赖库。
  - ohos-x86_64-libs: 用于构建ohos-x86_64应用的依赖库，主要提供给ohos x86_64模拟器使用。

- api modules包存放仓颉API对外声明文件。
- api macro包主要存放仓颉宏相关动态库和cjo文件。
  
  仓颉宏的详细介绍，请参考[仓颉宏介绍](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/User_Manual/source_zh_cn/Macro/macro_introduction.md)

  - ark-interop: cangjie_ark_interop部件的仓颉互操作宏动态库和cjo文件。
  - arkui state manager: arkui_cangjie_wrapper部件的仓颉状态管理宏动态库和cjo文件。

**build-tools：**

- 主要存放仓颉构建工具链，包括仓颉编译器、标准库、运行时库、工具等。
  - cangjie-compiler：包括cjc，cjc-frontend等。
  - cangjie-runtime：主要包括仓颉runtime和仓颉标准库动态库以及仓颉标准库API对外声明文件。
  - cangjie-tools: 主要包括cjpm, cjdb, cjfmt等。

仓颉SDK包目录结构：
```
cangjie
├── api                                     # API 符号库
│   ├── lib                                 # 仓颉API动态库及其对于cjo
│   │   ├── linux_ohos_aarch64_cjnative     
│   │   │   ├── kit
│   │   │   │   ├── xxx.so
│   │   │   │   └── xxx.cjo
│   │   │   └── ohos
│   │   │       ├── xxx.so
│   │   │       └── xxx.cjo
│   │   └── linux_ohos_x86_64_cjnative
│   │       ├── kit
│   │       │   ├── xxx.so
│   │       │   └── xxx.cjo
│   │       └── ohos
│   │           ├── xxx.so
│   │           └── xxx.cjo
│   ├── macro                               # 仓颉API宏库以及对应cjo
│   │   └── ohos
│   │       ├── xxx.dll/xxx.so/xxx.dylib
│   │       └── xxx.cjo
│   └── modules                             # 仓颉API对外声明文件
│       └── linux_ohos_aarch64_cjnative
│           ├── kit
│           │   └── kit.xxx.cj.d
│           └── ohos
│               └── ohos.xxx.cj.d
├── build-tools                             # 仓颉构建工具链
│   ├── bin                                 # 仓颉编译器二进制目录
│   ├── lib                                 # 仓颉标准库静态库存放目录
│   ├── modules                             # 仓颉标准库头文件以及cjo存放目录
│   ├── runtime                             # 仓颉运行时动态库存放目录（包括仓颉运行时库和仓颉标准库）                                              
│   ├── third_party                         # 仓颉依赖的三方库以及三方工具
│   └── tools                               # 仓颉工具
└── oh-uni-package.json
```

## 编译构建

```
./build.sh --product-name ohos-sdk --ccache  --build-target out/sdk/gen/build/ohos/sdk:cangjie   
```

仓颉SDK构建详细说明请参考[仓颉SDK构建说明](docs/cangjie_sdk_build_guide.md)。

## 约束

- 当前ohos-sdk中仓颉支持windows/linux/mac-x64/mac-arm64平台交叉编译ohos应用，暂不支持ohos平台上构建应用。

## 参与贡献

欢迎广大开发者贡献代码、文档等内容，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[arkcompiler_cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/)

[arkui_arkui_cangjie_wrapper](https://gitcode.com/openharmony-sig/arkui_arkui_cangjie_wrapper/)

[third_party_flatbuffers](https://gitcode.com/openharmony/third_party_flatbuffers/)

[interface_sdk_c](https://gitcode.com/openharmony/interface_sdk_c/)

[interface_sdk-js](https://gitcode.com/openharmony/interface_sdk-js/)