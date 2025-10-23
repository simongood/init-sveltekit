# --- Stage 1: Build stage ---
FROM node:22-alpine AS builder

WORKDIR /app
COPY package.json package-lock.json* pnpm-lock.yaml* ./
RUN npm install
COPY . .
RUN npm run build


# --- Stage 2: Production stage ---
FROM nginx:1.27-alpine AS runner

# 複製 build 結果
COPY --from=builder /app/build /usr/share/nginx/html

# 直接複製 nginx.conf（不再用 printf）
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
