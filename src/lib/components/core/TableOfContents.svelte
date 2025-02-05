<script lang="ts">
  import { onMount } from 'svelte';

  type MenuOption = {
    href: string;
    text: string;
  };

  const options: MenuOption[] = [
    { text: 'Home', href: '#top' },
    { text: 'Advantages', href: '#advantages' },
    { text: 'Testimonials', href: '#testimonials' },
    { text: 'Concepts', href: '#basic-concepts' },
    { text: 'Contributing', href: '#contributing' },
    { text: 'Downloads', href: '#downloads' },
  ];

  // Intercept anchor element clicks to hide the popover menu and smoothly scroll fragment links into view.
  onMount(() => {
    const anchors = document.querySelectorAll('a[href^="#"]') as NodeListOf<HTMLAnchorElement>;
    anchors.forEach((anchor) => {
      anchor.addEventListener('click', function (event: MouseEvent) {
        event.preventDefault();
        const href = (event.target as HTMLAnchorElement).getAttribute('href');
        if (href) {
          if (href === '#top') {
            window.scrollTo({ top: 0, behavior: 'smooth' });
          } else {
            document.querySelector(href)?.scrollIntoView({ behavior: 'smooth' });
          }
        }
      });
    });
  });
</script>

<div
  role="navigation"
  class="group hidden 2xl:block opacity-40 hover:opacity-100 fixed top-1/8 right-4 p-16 pr-4 size-fit translate-x-30 hover:translate-x-0 transition-all duration-400 ease-out"
>
  <p class="mb-3 tracking-wide text-lg">On this page</p>
  <nav class="grid">
    {#each options as { text, href }}
      <a
        class="text-foreground/80 hover:text-foreground border-l border-white/[13%] px-3 text-lg leading-8 select-none transition-all gap-1 duration-150 ease-out flex items-center hover:border-primary hover:bg-primary/10"
        {href}
      >
        {text}
      </a>
    {/each}
  </nav>
</div>
