<script lang="ts">
  import { base } from "$app/paths";

  type AdvantageCard = {
    title: string;
    description: string;
    icon: string;
  };

  let { title, description, icon }: AdvantageCard = $props();
</script>

<div
  class="border-black/[13%] dark:border-white/[13%] gap-2 flex flex-col justify-end xl:px-14 xl:py-9 xl:border-2"
>
  <div class="flex items-center gap-4 xl:items-start xl:flex-col xl:gap-3">
    <img src="{base}{icon}" alt="icon" class="size-8 xl:size-12" />
    <h1 class="text-xl font-medium uppercase xl:text-2xl">{title}</h1>
  </div>
  <p class="text-neutral xl:text-lg xl:leading-9 xl:tracking-[0.24px]">{description}</p>
</div>
