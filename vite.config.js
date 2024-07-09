import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: "0.0.0.0", // 允许从局域网或外网访问
    port: 3333, // 设置服务端口号
    https: false, // 使用 HTTP（默认是 false）
  },
});
