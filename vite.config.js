import {defineConfig} from 'vite'
import legacy from '@vitejs/plugin-legacy'

export default defineConfig({
    build: {
        modulePreload: true,
    },
})