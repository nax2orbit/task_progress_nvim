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

# Screenshot

<img width="960" height="473" alt="Screenshot 2025-08-20 at 21 43 47" src="https://github.com/user-attachments/assets/a4a9222e-a943-44e5-911c-97e8a56f0897" />

