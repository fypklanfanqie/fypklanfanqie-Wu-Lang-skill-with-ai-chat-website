# 武亮视角 — Nuwa AI Agent Skill

[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-green.svg)](https://github.com)
[![Version](https://img.shields.io/badge/Version-0.6.1-blue.svg)](https://github.com)
[![Nuwa Skill](https://img.shields.io/badge/Nuwa-Skill-orange.svg)](https://github.com/alchaincyf/nuwa-skill)

> 🔬 基于 [nuwa-skill](https://github.com/alchaincyf/nuwa-skill) 蒸馏范式，通过全网素材采集 + Whisper AI 视频转录构建的 **武亮（峰学未来主创人员）认知模拟 Skill**。

---

## ⚠️ 许可证

本作品采用 **CC BY-NC-ND 4.0** 许可证。

- ✅ 个人使用、学术研究、非商业用途
- ❌ **禁止商用** — 不得用于任何商业目的
- ❌ **禁止修改/二次创作** — 不得基于本作品进行衍生创作
- ⚠️ 必须署名

详见 [LICENSE](./LICENSE)

---

## 📦 项目结构

```
wuliang-skill/
├── SKILL.md              # 🔑 核心指令文件 (Identity/Soul/Procedure/Voice/Boundaries)
├── metadata.yaml         # 元信息 + 法律声明 + 版本历史
├── style_guide.md        # 🎤 风格执行细则 (15条 Voice Anchor + 量化参数)
├── decision_tree.md      # 🌳 7 场景 Mermaid 可视化决策树
├── profession_matrix.md  # 📊 专业推荐矩阵 (天坑预警/铁饭碗/三要素法)
├── gaps_report.md        # 📋 缺口报告与迭代跟踪
├── LICENSE               # CC BY-NC-ND 4.0
├── README.md             # 本文件
├── references/
│   └── source_index.yaml # 📚 35 条素材完整溯源索引
├── examples/             # 💬 8 个 Few-shot 示例
│   ├── example_01 ~ 08.yaml
├── web/
│   └── index.html        # 🌐 Claude 风格 AI 对话界面 (可直接打开)
└── transcripts/          # 📝 4 份 Whisper AI 转录文本
    ├── BV1t1746ME1c_flv.txt (99s)
    ├── BV1hxj26fE3V_flv.txt (289s)
    ├── BV15T7v6TEm3_53min.txt (53min)
    └── BV1oW7s6yEYr_flv.txt (2h)
```

---

## 🎯 核心能力

| 模块 | 覆盖范围 | 状态 |
|------|----------|------|
| **决策 SOP** | 7 场景决策树 (高分/中分/低分/压线/家庭/专科/班主任边界) | ✅ |
| **风格系统** | 15 条 Voice Anchor + 6 条反样本 + 量化参数 | ✅ |
| **专业矩阵** | 15 项天坑预警 + 20 条推荐路径 + 6 项铁饭碗清单 | ✅ |
| **特殊路径** | 艺考/强基计划/专项计划/公费师范/定向医学 | ✅ |
| **边界条款** | 15 条能力边界 + 伦理安全阀 + 团队协同触发器 | ✅ |
| **Few-shot** | 8 个示例覆盖典型+边缘场景 | ✅ |

---

## 🔢 关键数据

```
素材总数:        35 条 (含 4 条 Whisper AI 转录)
原话引用:        10+ 条
完整对话转录:    4 份 (~56,000 字)
Voice Anchors:  15 条
高确信规则:      8 条
Few-shot:        8 个
可执行性得分:    77%
```

---

## 🚀 快速开始

### 方式 1: 直接使用对话界面
双击 `web/index.html`，无需任何配置即可开始对话（使用 Pollinations.ai 免费引擎）。

### 方式 2: 作为 AI Agent Skill 加载
将 `SKILL.md` 加载到你的 AI Agent 中作为 System Prompt。推荐使用：
- [Cursor](https://cursor.sh)
- [Claude Desktop](https://claude.ai)
- [ChatGPT Custom Instructions](https://chat.openai.com)
- 任何支持 System Prompt 的 LLM 客户端

### 方式 3: Agent 自动执行
遵循 [nuwa-skill](https://github.com/alchaincyf/nuwa-skill) 仓库定义的加载协议，
Agent 将自动读取 `SKILL.md`、`style_guide.md`、`decision_tree.md` 等文件来模拟武亮视角回答。

---

## 🏗️ 构建方法

本项目严格遵循 nuwa-skill 蒸馏铁律：

1. **可执行 > 可阅读**: 每段文字直接指导 Agent 行为
2. **溯源强制**: 每条 Rule 对应 `references/source_index.yaml` 中的素材
3. **最小完备集**: 不确定的规则标注 `[待验证]`，不编造
4. **人机协作**: 低置信度决策预留人工确认钩子
5. **合规前置**: 完整法律声明 + 免责声明

关键技术路径：
```
Phase 1: 全网素材采集 → 24 条原始素材
Phase 2: 结构化萃取 → SKILL.md + 决策树 + 风格锚点
Phase 2.5: 定向补充采集 → 11 条新素材
Phase 2.6: B站视频下载(you-get) + Whisper AI 转录 → 4 份完整对话
Phase 2.7: 专业矩阵构建 + 缺口填补
```

---

## ⚠️ 免责声明

1. 本 Skill 为 AI 基于武亮公开网络素材构建的**认知模拟体**，非武亮本人
2. 所有建议仅供参考，**不构成任何专业志愿填报决策依据**
3. 高考志愿填报涉及不可逆的人生决策，最终方案须由考生、家长与专业顾问共同确认
4. 素材来源均为公开网络搜索，不涉及隐私侵犯或商业机密
5. 如武亮本人或峰学蔚来对内容有异议，请提 Issue 联系下架

---

## 📄 License

[CC BY-NC-ND 4.0](./LICENSE) — 个人使用 + 署名 + 非商业 + 禁止演绎
