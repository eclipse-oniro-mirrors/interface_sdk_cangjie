#  Commit 提交规范

## 参考 Conventional Commits 规范

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

- **type:**

| 类型标识 | 核心语义           | 典型应用场景                                 | 变更影响维度          |
| -------- | ------------------ | -------------------------------------------- | --------------------- |
| feat     | 功能增量开发       | 新增用户登录模块、添加数据导出功能           | 业务逻辑/用户交互     |
| fix      | 缺陷修复与问题解决 | 处理订单状态不同步、修复内存泄漏问题         | 系统稳定性/数据一致性 |
| docs     | 文档内容维护       | 更新API接口说明、补充部署手册故障排查章节    | 知识传承/协作效率     |
| style    | 代码风格统一       | 调整ESLint缩进规则、统一函数命名规范         | 可读性/团队协作规范   |
| refactor | 架构优化与代码重组 | 抽离公共工具类、重构数据访问层接口设计       | 可维护性/扩展性       |
| perf     | 性能瓶颈突破       | 优化数据库查询索引、引入缓存机制减少IO操作   | 响应速度/资源利用率   |
| test     | 质量保障体系完善   | 增加边界条件测试用例、完善集成测试覆盖率     | 代码可靠性/回归验证   |
| build    | 构建流程配置管理   | 升级Webpack至v5版本、配置多环境打包参数      | 交付效率/环境一致性   |
| ci       | 自动化流水线优化   | 集成SonarQube质量门禁、配置自动部署到K8s集群 | 工程效能/交付质量     |
| chore    | 开发环境维护       | 更新npm依赖包版本、清理无用配置文件          | 开发体验/技术债务管理 |
| revert   | 变更回退操作       | 撤销导致生产故障的提交、回退不兼容的接口修改 | 版本控制/风险规避     |

- **其他:**

  ohos 社区要求每个 commit 必须带上Signed-off-by 信息（git commit -s ）

## 示例

```shell
build: add .claude/ to gitignore

Signed-off-by: xxx <xxx@xxx.com>
```



```shell
feat: cangjie sdk adapt for ohos

 - support ohos arm64
 - support ohos arm32
 
Signed-off-by: xxx <xxx@xxx.com>
```

