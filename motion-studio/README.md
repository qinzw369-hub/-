# motion-studio

动态图形视频工作区：Remotion（React 写视频）、HyperFrames（HTML 写视频）、21st CLI（高质量 UI 组件）。

```bash
cd motion-studio && npm install
npx hyperframes browser ensure      # HyperFrames 渲染用的 Chrome
npx hyperframes skills              # 安装 HyperFrames 的 agent 技能
npx skills add remotion-dev/skills -g -a claude-code -y   # 安装 Remotion 的 agent 技能
```

注意：如果网络环境拦截了 cdn.jsdelivr.net，要用本地的 `node_modules/gsap/dist/gsap.min.js` 替换模板里的 GSAP CDN 链接。
