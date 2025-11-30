# IPFM Frontend

A modern, high-performance frontend application built with **React**, **Vite**, and **TailwindCSS** — optimized for scalability and developer experience.

## 📘 Overview

IPFM Frontend is a modular and production-ready React application that includes:

- Fast dev server powered by **Vite**
- Utility-first styling with **TailwindCSS**
- Strong typing via **TypeScript**
- Routing via **React Router**
- Linting & formatting for clean and consistent code

## 🧰 Technology Stack

- ⚛️ **React**
- ⚡ **Vite**
- 🎨 **TailwindCSS**
- 🟦 **TypeScript**
- 🧹 **ESLint**
- 🧭 **React Router**

## 📂 Project Structure

```
public/                 # Public folder
├── logo.svg            # App logo
src/                    # Source folder
├── configs/            # Configs folder/
├── components/         # Components folder
├── pages/              # Pages folder
├── App.tsx             # App component
├── index.css           # CSS file
├── main.tsx            # Main entry point
├── Router.tsx          # Router component
eslintrc.config.js      # ESLint configuration file
index.html              # HTML file
package.json            # Package configuration file
pnpm-lock.yaml          # Pnpm lock file
pnpm-workspace.yaml     # Pnpm workspace configuration file
README.md               # Readme file
tsconfig.app.json       # TypeScript configuration file
tsconfig.json           # TypeScript configuration file
tsconfig.node.json      # TypeScript configuration file
vite.config.ts          # Vite configuration file
```

## 🛠️ Development


### 🔑 Prerequisites

- **Node.js >= 20**
- **Pnpm >= 10**
- **Docker (optional)**

### ▶️ Local Development

Copy configuration file:

```bash
cp config.example.js config.js
```

Install dependencies:

```bash
pnpm install
```

Start development server:

```bash
pnpm dev
```

The app runs at:

```
http://localhost:5173
```

### 🐳 Docker Development

Build Docker image:

```bash
docker build -t ipfm-frontend -f docker/Dockerfile .
```

Run Docker container:

```bash
docker run -dp 80:80 ipfm-frontend
```

## ⚙️ Configuration
Environment variables are stored in `config.js` file.

| Variable      | Default                 | Description      |
| ------------- | ----------------------- | ---------------- |
| `APP_API_URL` | `http://localhost:3000` | API base URL     |
| `APP_ENV`     | `development`           | Environment mode |

## 🧪 Scripts

| Command        | Description              |
| -------------- | ------------------------ |
| `pnpm install` | Install dependencies     |
| `pnpm dev`     | Start development server |
| `pnpm build`   | Build production bundle  |
| `pnpm lint`    | Run ESLint               |
| `pnpm preview` | Preview production build |

## 🤝 Contributing
Feel free to submit issues or pull requests. Contributions are welcome!
