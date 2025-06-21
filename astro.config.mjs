// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
    integrations: [
        starlight({
            title: 'Veko.js',
            description: 'Framework web ultra-moderne pour Node.js',
            social: [
                { 
                    icon: 'github', 
                    label: 'GitHub', 
                    href: 'https://github.com/wiltark/veko.js' 
                }
            ],
            sidebar: [
                {
                    label: 'Guide',
                    items: [
                        { label: 'Démarrage rapide', slug: 'guides/getting-started' },
                        { label: 'Installation', slug: 'guides/installation' },
                        { label: 'Structure du projet', slug: 'guides/project-structure' },
                        { label: 'Configuration', slug: 'guides/configuration' },
                    ],
                },
                {
                    label: 'Fonctionnalités',
                    items: [
                        { label: 'Système de layout', slug: 'features/layouts' },
                        { label: 'Système de plugins', slug: 'features/plugins' },
                        { label: 'Gestion des routes', slug: 'features/routing' },
                        { label: 'Journalisation', slug: 'features/logging' },
                        { label: 'Rechargement intelligent', slug: 'features/hot-reload' },
                    ],
                },
                {
                    label: 'Auto-Updater',
                    items: [
                        { label: 'Guide complet', slug: 'auto-updater/guide' },
                        { label: 'Configuration', slug: 'auto-updater/configuration' },
                        { label: 'API', slug: 'auto-updater/api' },
                        { label: 'Canaux de mise à jour', slug: 'auto-updater/channels' },
                    ],
                },
                {
                    label: 'CLI',
                    autogenerate: { directory: 'cli' },
                }
            ],
            customCss: ['./src/styles/custom.css'],
            head: [
                {
                    tag: 'script',
                    attrs: {
                        src: 'https://cdn.jsdelivr.net/npm/@tabler/icons@latest/icons-react/dist/index.umd.min.js',
                    },
                },
            ],
        }),
    ],
});