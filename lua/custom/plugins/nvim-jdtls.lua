return {
  'mfussenegger/nvim-jdtls',
  ft = { 'java' }, -- only load for Java files
  dependencies = { 'williamboman/mason.nvim' },
  config = function()
    local jdtls = require 'jdtls'

    -- Mason path
    local jdtls_path = vim.fn.stdpath 'data' .. '/mason/bin/jdtls'

    -- Detect project root
    local root_dir = require('jdtls.setup').find_root {
      '.git',
      'mvnw',
      'gradlew',
      'pom.xml',
      'build.gradle',
    }

    if root_dir == '' then
      return -- do nothing if not in a Java project
    end

    -- Workspace folder for this project
    local workspace_dir = vim.fn.stdpath 'cache' .. '/jdtls/' .. vim.fn.fnamemodify(root_dir, ':p:h:t')

    local config = {
      cmd = { jdtls_path, '-data', workspace_dir },
      root_dir = root_dir,
    }

    jdtls.start_or_attach(config)
  end,
}
