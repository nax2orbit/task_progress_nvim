# Installation

This Plugin was created in an environment using LazyVim.
1. Place the file in the following path:
```
~/.config/nvim/lua/user/plugins/task_progress.lua
```

2. Open Neovim and run:
```
:Lazy sync
```
After that, the task progress will be displayed in your statusline (lualine).

# Usage

Write your tasks using checkboxes in a markdown-style list.  
Both forms with and without spaces are supported.

```
-[] Incomplete task
-[ ] Incomplete task (with space)

-[X] Completed task
- [x] completed task (with space)
```

The statusline will show the progress, for example:
```
✔ 2/4 (50%)
```


