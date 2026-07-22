-- MG65 Codex controls. F20 is intentionally disabled because its Review
-- shortcut was unreliable and could leave modifiers latched.
require("hs.ipc")

local codexBundleID = "com.openai.codex"

local function codexIsFrontmost()
  local frontmost = hs.application.frontmostApplication()
  return frontmost and frontmost:bundleID() == codexBundleID
end

local function sendCodexShortcut(modifiers, key)
  if not codexIsFrontmost() then
    return
  end

  -- Run after the source function-key event has finished. A small, non-zero
  -- key duration prevents modifier flags from remaining latched.
  hs.timer.doAfter(0.03, function()
    hs.eventtap.keyStroke(modifiers, key, 20000)
  end)
end

codexHotkeys = {
  hs.hotkey.bind({}, "f15", function()
    sendCodexShortcut({ "cmd" }, "n")
  end),
  hs.hotkey.bind({}, "f16", function()
    sendCodexShortcut({ "ctrl", "shift" }, "m")
  end),
  hs.hotkey.bind({}, "f17", function()
    sendCodexShortcut({ "ctrl", "alt", "cmd" }, "-")
  end),
  hs.hotkey.bind({}, "f18", function()
    sendCodexShortcut({ "ctrl", "alt", "cmd" }, "=")
  end),
  hs.hotkey.bind({}, "f19", function()
    sendCodexShortcut({ "ctrl", "alt", "cmd" }, "p")
  end),
}
