<script>
  import '@fontsource-variable/outfit';
  import '../app.css';
  import Navigation from '$lib/components/core/Navigation.svelte';
  import { base } from '$app/paths';
</script>

<svelte:head>
  <title>Anki - powerful, intelligent flashcards</title>
  <link rel="icon" href="{base}/logo.svg" />
</svelte:head>

<Navigation />
<main class="mx-auto max-w-[1624px] px-14">
  <slot />
</main>
