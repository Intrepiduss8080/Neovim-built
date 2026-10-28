local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("core.config")

require("lazy").setup("plugins", {
  install = {
    missing = true,
  },
  checker = {
    enabled = false, -- не проверять обновления автоматически
  },
  git = {
    timeout = 300,        -- 5 минут на одну git-операцию
    url_format = "https://github.com/%s.git",
  },
  concurrency = 1,         -- по одному плагину за раз (стабильнее на плохой сети)
  rocks = {
    enabled = false,       -- отключить luarocks, часто лишнее
  },
})





