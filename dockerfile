# 使用官方的 Node 镜像作为基础镜像
FROM node:16

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 构建项目
RUN npm run build

# 安装 serve 用于提供静态文件服务
RUN npm install -g serve

# 暴露应用程序的端口
EXPOSE 5000

# 使用 serve 提供静态文件服务
CMD ["serve", "-s", "dist", "-l", "5000"]
