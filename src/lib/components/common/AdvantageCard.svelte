<script lang="ts">
  import { base } from "$app/paths";

  export let title: string;
  export let description: string;
  export let icon: string;
</script>

<div
  class="border-white/[13%] gap-2 flex flex-col justify-end xl:aspect-[16/10] xl:px-14 xl:py-9 xl:border-2"
>
  <div class="flex items-center gap-4 xl:items-start xl:flex-col xl:gap-3">
    <img src="{base}{icon}" alt="icon" class="size-8 xl:size-12" />
    <h1 class="text-2xl font-medium uppercase xl:text-3xl">{title}</h1>
  </div>
  <p class="text-neutral xl:text-xl xl:leading-9 xl:tracking-[0.24px]">{description}</p>
</div>
