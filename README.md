# Telescope Extra Actions

Adds some additional actions that you can attach to pickers

## Available Actions

| Action    |   Picker  | Description                                |
|-----------|-----------|--------------------------------------------|
|delete_file| find_files| Deletes selected files in find_files picker|

## Install

via lazy.nvim

```lua
  {
    omaraboumrad/telescope-extra-actions.nvim',
    dependencies = {
      "nvim-telescope/telescope.nvim",
    }
  }
```

## Usage

### Delete File


![Demo](screenshots/delete_file.gif)


```lua
local extra_actions = require "telescope-extra-actions"

require('telescope').setup({
  pickers = {
    find_files = {
      mappings = {
        i = {
          ["<c-d>"] = extra_actions.delete_file,
        }
      }
    }
  }
})
```
