FROM node:22.20-alpine3.22 AS builder
RUN npm i -g pnpm@10.22.0
WORKDIR /app
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN pnpm install --frozen-lockfile
COPY index.html tsconfig.app.json tsconfig.json tsconfig.node.json vite.config.ts ./
COPY public ./public
COPY src ./src
RUN pnpm build

FROM nginx:1.29-alpine3.22
COPY docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY docker/start.sh /opt/start.sh
RUN chmod +x /opt/start.sh
COPY --from=builder /app/dist /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
EXPOSE 80
CMD ["/opt/start.sh"]
