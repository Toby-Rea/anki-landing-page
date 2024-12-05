<script lang="ts">
  import { fade } from 'svelte/transition';
  import Logo from '$lib/components/core/Logo.svelte';
  import { base } from '$app/paths';

  type MenuOption = {
    href: string;
    text: string;
    external?: boolean;
  };

  let show: boolean = $state(false);
  const options: MenuOption[] = [
    { text: 'Home', href: '#' },
    { text: 'Advantages', href: '#advantages' },
    { text: 'Testimonials', href: '#testimonials' },
    { text: 'Basic Concepts', href: '#basic-concepts' },
    { text: 'Contributing', href: '#contributing' },
    { text: 'Downloads', href: '#downloads' },
    { text: 'Add-Ons', href: 'https://ankiweb.net/shared/addons', external: true },
  ];

  const handleSelect = (href: string) => {
    if (href.startsWith('#')) {
      if (href === '#') {
        window.scrollTo({ top: 0, behavior: 'smooth' });
      } else {
        document.querySelector(href)?.scrollIntoView({ behavior: 'smooth' });
      }
    } else {
      window.open(href, '_blank');
    }
  };

  function handleKeydown(event: KeyboardEvent) {
    if (event.key === 'Escape') {
      toggleMenu();
    }
  }

  function toggleMenu() {
    show = !show;
    if (show) {
      setTimeout(() => {
        document.addEventListener('click', toggleMenu);
        document.addEventListener('keydown', handleKeydown);
      }, 5);
    } else {
      document.removeEventListener('click', toggleMenu);
      document.removeEventListener('keydown', handleKeydown);
    }
  }
</script>

<header
  class="sticky top-0 z-50 w-full border-white/[13%] bg-background/95 backdrop-blur-md supports-[backdrop-filter]:bg-background/60 py-4 border-b-2"
>
  <div class="flex items-center justify-between h-full max-w-[1624px] mx-auto px-8">
    <Logo />
    <button
      onclick={() => toggleMenu()}
      aria-expanded={show}
      aria-controls="dropdown-menu"
      class="focus:shadow-solid flex items-center justify-center gap-5 capitalize hover:opacity-60"
    >
      <img src="{base}/icons/menu-bars.svg" alt="menu" class="size-10" />
    </button>
  </div>
</header>

{#if show}
  <div
    class="fixed flex flex-col gap-4 items-center justify-center w-screen h-screen top-0 left-0 z-[999] bg-background/95 backdrop-blur-md supports-[backdrop-filter]:bg-background/90"
    role="navigation"
    transition:fade={{ delay: 0, duration: 250 }}
  >
    {#each options as { text, href, external }}
      <a
        {href}
        onclick={(event) => {
          event.preventDefault();
          handleSelect(href);
        }}
        class="text-3xl font-semibold hover:text-primary hover:opacity-80 focus:text-primary focus:opacity-80 uppercase flex items-center gap-4 p-3"
      >
        <span>{text}</span>
        {#if external}
          <img src="{base}/icons/link-arrow.svg" alt="outlink" class="size-6" />
        {/if}
      </a>
    {/each}
  </div>
{/if}
