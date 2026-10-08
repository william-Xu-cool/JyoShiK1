#!/bin/zsh
set -e
cd -- "${0:A:h}"

daily_focus_node="$(command -v node || true)"
if [[ -z "$daily_focus_node" ]]; then
  daily_focus_node="$HOME/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/bin/node"
fi
if [[ ! -x "$daily_focus_node" ]]; then
  print '请先安装 Node.js 20.19+ 或 22.12+，然后按 README 启动。'
  read '?按回车键退出。'
  exit 1
fi
if [[ ! -f node_modules/vite/bin/vite.js ]]; then
  print '请先在此文件夹运行 npm install 或 pnpm install。'
  read '?按回车键退出。'
  exit 1
fi
exec "$daily_focus_node" node_modules/vite/bin/vite.js --host 127.0.0.1 --open
