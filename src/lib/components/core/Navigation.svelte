<script lang="ts">
  import Logo from '$lib/components/core/Logo.svelte';
</script>

<header
  class="sticky top-0 z-50 w-full border-white/[13%] bg-background/95 backdrop-blur-md supports-[backdrop-filter]:bg-background/60 py-4 border-b-2"
>
  <div class="flex items-center justify-between h-full max-w-[1624px] mx-auto px-8">
    <Logo />
    <button class="hover:opacity-60">
      <img src="/icons/menu-bars.svg" alt="menu" class="size-10" />
    </button>
  </div>
</header>
