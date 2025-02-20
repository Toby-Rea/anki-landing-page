<script lang="ts">
  import type { Snippet } from 'svelte';

  type DualHeader = {
    title: string;
    subtitle: Snippet;
  };

  let { title, subtitle }: DualHeader = $props();

  const id = $derived(title.toLowerCase().replace(/\s/g, '-'));
</script>

<hgroup
  class="my-20 mx-auto w-full flex flex-col text-center left items-center justify-center gap-4 px-4 md:max-w-[820px] scroll-mt-32 @container"
>
  <h2 {id} class="text-[max(6cqw,_1.875em)] font-semibold capitalize leading-none">{title}</h2>
  <p class="text-[max(2.5cqw,_0.9375em)] text-subtle leading-snug">
    {@render subtitle()}
  </p>
</hgroup>
