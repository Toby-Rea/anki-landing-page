<!-- src/routes/+error.svelte -->
<script lang="ts">
  import { page } from '$app/stores';
  import { browser } from '$app/environment';
  import { onMount } from 'svelte';

  onMount(() => {
    if (browser && $page.status === 404) {
      window.location.href = '/';
    }
  });
</script>

<div class="error-container">
  <h1>{$page.status}: {$page.error?.message || 'Not Found'}</h1>
  <p>Redirecting to homepage...</p>
</div>

<style>
  .error-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    text-align: center;
  }
</style>
