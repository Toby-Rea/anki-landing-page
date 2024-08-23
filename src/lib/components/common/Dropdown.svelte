<script lang="ts">
  import { onMount } from 'svelte';
  import { scale } from 'svelte/transition';

  export let selected: string;
  export let options: string[];

  let show: boolean = false;
  let menu: HTMLDivElement | null = null;

  function handleSelect(option: string) {
    selected = option;
    show = false;
  }

  onMount(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (menu && !menu.contains(event.target as Node)) {
        show = false;
      }
    };

    const handleEscapeKey = (event: KeyboardEvent) => {
      if (event.key === 'Escape') {
        show = false;
      }
    };

    document.addEventListener('click', handleClickOutside);
    document.addEventListener('keydown', handleEscapeKey);

    return () => {
      document.removeEventListener('click', handleClickOutside);
      document.removeEventListener('keydown', handleEscapeKey);
    };
  });
</script>

<div class="relative w-fit" bind:this={menu}>
  <button
    on:click={() => (show = !show)}
    aria-expanded={show}
    aria-controls="dropdown-menu"
    class="lg:w-44 bg-background focus:outline-none focus:shadow-solid border-2 border-white/[13%] text-white font-medium lg:text-2xl px-5 py-2.5 flex items-center justify-center gap-5 capitalize hover:opacity-80"
    class:opacity-80={show}
  >
    <span>
      {selected}
    </span>
    <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path
        d="M19.5464 8.75L12.0464 16.25L4.54639 8.75"
        stroke="white"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
    </svg>
  </button>
  {#if show}
    <div
      id="dropdown-menu"
      role="menu"
      in:scale={{ duration: 100, start: 0.85 }}
      out:scale={{ duration: 75, start: 0.85 }}
      class="absolute grid gap-1 w-full bg-background mt-3 border-2 border-white/[13%] p-1"
    >
      {#each options as option}
        <button
          role="menuitem"
          on:click={() => handleSelect(option)}
          class="lg:text-xl py-2.5 hover:opacity-80 hover:bg-white/[3%] capitalize font-medium"
          class:text-primary={option === selected}
        >
          {option}
        </button>
      {/each}
    </div>
  {/if}
</div>
