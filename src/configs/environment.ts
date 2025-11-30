declare global {
  interface Window {
    APP_API_URL?: string
  }
}

export const APP_API_URL = window.APP_API_URL ?? ''
