# Codex Keyboard Controls

MG65 键盘配合 Codex App 的快捷键配置。硬件按键通过 VIA 输出 F15–F19，Hammerspoon 只在 Codex 位于前台时转发快捷键。

## 当前映射

### 右侧 2×2 区域（第 0 层）

| 位置 | VIA 键码 | Codex 动作 |
| --- | --- | --- |
| 左上 | `F15` | 新建任务（Command+N） |
| 右上 | `F16` | 打开模型选择器（Control+Shift+M） |
| 左下 | `F19` | 切换 Plan 模式 |
| 右下 | `Esc` | 硬件级 Esc，不经过 Hammerspoon |

### Fn + 旋钮

| VIA 键码 | Codex 动作 |
| --- | --- |
| `F17` | 降低思考强度 |
| `F18` | 提高思考强度 |

右下键在第 0 层和第 2 层均设置为 `KC_ESC`。`F20` 不做任何绑定，避免不可靠的复合快捷键造成修饰键卡住。

## 安装

1. 安装 [Hammerspoon](https://www.hammerspoon.org/)。
2. 将 `hammerspoon/init.lua` 的内容合并到 `~/.hammerspoon/init.lua`。
3. 将 `codex/keybindings.json` 放到 `~/.codex/keybindings.json`。
4. 在 Hammerspoon 中执行 Reload Config。
5. 使用 VIA 按上表配置键盘。VIA 修改会立即写入键盘。

Hammerspoon 配置会检查前台应用的 bundle ID，只有 `com.openai.codex` 位于前台时才会触发 Codex 快捷键。
