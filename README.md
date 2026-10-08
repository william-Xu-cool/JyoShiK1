# Daily Focus

根据 Figma 中的 **Daily Focus — State A / State B** 制作的本地交互原型，使用 React、TypeScript、Vite 和普通 CSS。

线上预览：[Daily Focus](https://daily-focus-orpin.vercel.app/)

## 启动

源码 ZIP 不包含依赖。解压后，在 `daily-focus` 文件夹中打开终端，先安装依赖再启动。

需要 Node.js 20.19+ 或 22.12+，以及 npm 或 pnpm。

```sh
cd daily-focus
npm install
npm run dev
```

打开终端显示的本地地址（通常是 http://127.0.0.1:5173）。如使用 pnpm，运行 `pnpm install` 和 `pnpm dev`；项目已提供 pnpm 锁文件。

Mac 上安装依赖后，也可以双击 `start.command` 启动并自动打开浏览器。保持终端窗口运行；按 Control+C 停止。

```sh
npm run build
npm run preview
```

## 交互

- 初始完成 `Review Figma design` 和 `Send workshop reminder`，显示 `2 of 4`。
- 点击整张任务卡片可切换完成状态；进度数字、进度条和删除线同步更新。
- 点击 `Prepare class slides` 可复现 Figma 的 State B（`3 of 4`）。
- `Reset demo` 恢复 State A。刷新页面也恢复初始状态。
- 支持 Tab、空格键、可见焦点、读屏进度播报和减少动态效果设置。

## 设计依据

[Figma 源页面](https://www.figma.com/design/qwkUqI0RDCDERydgaGs6Vx?node-id=8-242)

- 画板：State A `239:3347`；State B `239:3382`；原始尺寸均为 390 × 844。
- 使用设计原文、Inter 400/500/600/700 字重、原始颜色、间距和圆角；字体由 `@fontsource/inter` 本地打包，不依赖外部字体服务。
- 画板中没有图片或 SVG 资源，勾选符号为原设计中的文字字符。
- 桌面居中展示单个可交互画板；手机端铺满可用宽度。Figma 未提供独立响应式断点，因此窄屏换行和桌面外部留白为实现选择。
- 保留设计中的姓名 Bhavina、日期和状态标签；状态标签在操作后切换为 State B，重置后恢复 State A。
- 所有数据仅保存在当前页面内存中；无需后端。

## 部署到 Vercel

从 GitHub 导入本项目，框架选择 Vite，根目录保持仓库根目录。项目中的 `vercel.json` 已指定构建命令 `npm run build` 和输出目录 `dist`，不需要环境变量。

`archives/daily-focus-source.zip` 是可下载的源码压缩包，部署使用仓库根目录的源文件。
