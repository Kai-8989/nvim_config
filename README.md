# Neovim Configuration

This repository contains my personalized Neovim configuration, featuring custom key mappings, plugins, and settings for an optimized development workflow.

---

## Table of Contents
- [Key Mappings](#key-mappings)
  - [Harpoon](#harpoon)
  - [Lazygit](#lazygit)
  - [Telescope](#telescope)
  - [Nvim-Tree](#nvim-tree)
  - [Undo Tree](#undo-tree)
  - [Window Navigation](#window-navigation)
- [Plugins and Features](#plugins-and-features)
  - [Tree-Sitter](#tree-sitter)
  - [General Settings](#general-settings)
- [How to Use](#how-to-use)

---

## Key Mappings

### Harpoon
- **Add a file to Harpoon:**
  - **Key:** `<leader>a`
  - **Action:** Add the current file to Harpoon's list.

- **Toggle Harpoon Quick Menu:**
  - **Key:** `<C-e>`
  - **Action:** Show or hide the Harpoon quick menu.

- **Navigate to Harpoon files:**
  - **Key:** `<C-n>` - Navigate to file 1.
  - **Key:** `<C-b>` - Navigate to file 2.
  - **Key:** `<C-,>` - Navigate to file 3.
  - **Key:** `<C-4>` - Navigate to file 4.

---

### Lazygit
- **Open Lazygit in a floating window:**
  - **Key:** `<leader>gg`
  - **Action:** Launch Lazygit.

#### Lazygit Settings
- **Transparency:** `0` (fully opaque).
- **Scaling Factor:** `0.9` (90% of the screen size).
- **Custom Borders:** Enabled with Unicode characters.
- **Custom Config Path:** Disabled (default config used).

---

### Telescope
- **Find files:**
  - **Key:** `<leader>pf`
  - **Action:** Open the file finder.

- **Find Git files:**
  - **Key:** `<C-P>`
  - **Action:** Search for files tracked in Git.

- **Search string (Grep):**
  - **Key:** `<leader>ps`
  - **Action:** Prompt for input and search the string in the current project.

---

### Nvim-Tree
- **Toggle Nvim-Tree Sidebar:**
  - **Key:** `<leader>e`
  - **Action:** Show or hide the Nvim-Tree sidebar.

- **Focus Nvim-Tree Sidebar:**
  - **Key:** `<C-S-h>`
  - **Action:** Move the cursor to the Nvim-Tree sidebar.

#### Navigation
- **Key:** `h`
  - **Action:** Close the folder under the cursor if it's open.
- **Key:** `l`
  - **Action:** Open the folder or file under the cursor.

---

### Undo Tree
- **Toggle UndoTree:**
  - **Key:** `<leader>u`
  - **Action:** Show or hide the UndoTree for visualizing changes.

---

### Window Navigation
- **Move focus between splits:**
  - **Key:** `<C-h>` - Move left.
  - **Key:** `<C-l>` - Move right.
  - **Key:** `<C-j>` - Move down.
  - **Key:** `<C-k>` - Move up.

---

## Plugins and Features

### Tree-Sitter
- **Languages Installed:**
  - `c`, `lua`, `cpp`, `java`, `typescript`, `javascript`, `python`, `json`, `vim`, `markdown`, `go`, `html`, `css`, and more.

- **Highlights:**
  - Syntax-aware highlighting enabled via Tree-Sitter.

---

### General Settings
- **Enable 24-bit Colors:**
  - Set `vim.opt.termguicolors = true`.

- **Disable Netrw:**
  - Netrw is disabled to avoid conflicts with Nvim-Tree.

---

## How to Use

1. Clone this repository to your Neovim configuration directory:
   ```bash
   git clone <repository-url> ~/.config
