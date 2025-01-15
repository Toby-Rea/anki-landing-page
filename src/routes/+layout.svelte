<script lang="ts">
  import '@fontsource-variable/outfit';
  import '../app.css';
  import Navigation from '$lib/components/core/Navigation.svelte';
  import { base } from '$app/paths';

  interface Props {
    children?: import('svelte').Snippet;
  }

  let { children }: Props = $props();
</script>

<svelte:head>
  <title>Anki - powerful, intelligent flashcards</title>
  <link rel="icon" href="{base}/logo.svg" />
  <meta
    name="description"
    content="Anki - a program which makes remembering things easy."
  />
</svelte:head>

<Navigation />
<main class="mx-auto max-w-[1624px] px-14">
  {@render children?.()}
</main>
