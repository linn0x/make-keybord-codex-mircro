# make-keybord-codex-mircro

用 MG65 键盘右侧的 2×2 按键和 Fn 旋钮控制 Codex App。

VIA 负责让键盘输出 F15–F19，Hammerspoon 再把这些键转换成 Codex 快捷键。只有 Codex 位于前台时配置才会生效，不会影响其他应用。

## 键位

右侧 2×2 区域：

| 位置 | VIA 设置 | 功能 |
| --- | --- | --- |
| 左上 | `F15` | 新建任务 |
| 右上 | `F16` | 打开模型选择器 |
| 左下 | `F19` | 切换 Plan 模式 |
| 右下 | `Esc` | 直接发送 Esc |

Fn + 旋钮：

| VIA 设置 | 功能 |
| --- | --- |
| `F17` | 降低思考强度 |
| `F18` | 提高思考强度 |

右下键在 VIA 第 0 层和第 2 层都设为 `KC_ESC`。不要把它设成 F20；F20 没有 Hammerspoon 绑定。

## 安装

1. 安装 [Hammerspoon](https://www.hammerspoon.org/)。
2. 把 `hammerspoon/init.lua` 复制或合并到 `~/.hammerspoon/init.lua`。
3. 把 `codex/keybindings.json` 复制到 `~/.codex/keybindings.json`。
4. 在 Hammerspoon 菜单中点击 **Reload Config**。
5. 打开 VIA，按上面的表设置键盘。

## 实际发送的快捷键

| 键码 | 快捷键 |
| --- | --- |
| `F15` | `Command+N` |
| `F16` | `Control+Shift+M` |
| `F17` | `Control+Option+Command+-` |
| `F18` | `Control+Option+Command+=` |
| `F19` | `Control+Option+Command+P` |

配置使用 30 毫秒延迟和短按键时长发送组合键，用来降低修饰键卡住的概率。
