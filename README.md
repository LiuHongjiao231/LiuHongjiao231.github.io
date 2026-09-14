# 我的作品集网站

基于 Astro + Tailwind CSS 构建的个人作品集网站。

## 本地开发

```bash
# 安装依赖
npm install

# 启动开发服务器
npm run dev

# 构建生产版本
npm run build

# 预览构建结果
npm run preview
```

## 部署到 GitHub Pages

### 1. 修改配置

编辑 `astro.config.mjs`，替换为你的信息：

```js
site: 'https://你的GitHub用户名.github.io',
base: '/你的仓库名'
```

### 2. 创建 GitHub 仓库

1. 在 GitHub 创建新仓库（建议命名为 `my-website` 或你喜欢的名字）
2. 设置为 Public（GitHub Pages 免费版需要 Public 仓库）

### 3. 推送代码

```bash
cd my-website
git init
git add .
git commit -m "初始提交"
git branch -M main
git remote add origin https://github.com/你的用户名/你的仓库名.git
git push -u origin main
```

### 4. 开启 GitHub Pages

1. 进入仓库 **Settings** → **Pages**
2. **Source** 选择 **GitHub Actions**
3. 推送代码后，Actions 会自动运行部署
4. 部署完成后，访问 `https://你的用户名.github.io/你的仓库名/`

## 自动部署

每次推送到 `main` 分支，GitHub Actions 会自动：
1. 安装依赖
2. 构建项目
3. 部署到 GitHub Pages

## 目录结构

```
src/
├── layouts/       # 布局组件
├── pages/         # 页面
├── components/    # 复用组件
├── styles/        # 全局样式
└── content/       # Markdown 内容（如需）
```

## 修改内容

- **首页**：`src/pages/index.astro`
- **关于我**：`src/pages/about.astro`
- **项目页**：`src/pages/projects.astro`
- **导航/布局**：`src/layouts/Layout.astro`
- **样式**：`src/styles/global.css`

## 添加新页面

在 `src/pages/` 创建 `.astro` 文件即可自动生成路由。