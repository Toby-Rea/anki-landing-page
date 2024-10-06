<script lang="ts">
  export let title: string;
  export let description: string;
  export let icon: string;
  export let href: string | null = null;
</script>

{#if href}
  <a
    {href}
    target="_blank"
    rel="noopener noreferrer"
    class="border-white/[13%] gap-2 flex flex-col justify-end xl:aspect-[16/10] xl:px-14 xl:py-9 xl:border-2 xl:hover:shadow-[0_5px_21px_rgba(150_,140_,168_,_0.4)] transition-all duration-75"
  >
    <div class="flex items-center gap-4 xl:items-start xl:flex-col xl:gap-3">
      <img src={icon} alt="icon" class="hidden xl:block xl:size-12 xl:mb-4" />
      <div class="flex items-center gap-2">
        <h1 class="text-2xl font-medium uppercase xl:text-3xl">{title}</h1>
        <img src="/icons/link-arrow.svg" alt="outlink" class="size-6 xl:size-8" />
      </div>
    </div>
    <p class="text-neutral xl:text-xl xl:leading-9 xl:tracking-[0.24px]">{description}</p>
  </a>
{:else}
  <div
    class="border-white/[13%] gap-2 flex flex-col justify-end xl:aspect-[16/10] xl:px-14 xl:py-9 xl:border-2"
  >
    <div class="flex items-center gap-4 xl:items-start xl:flex-col xl:gap-3">
      <img src={icon} alt="icon" class="hidden xl:block xl:size-12 xl:mb-4" />
      <div class="flex items-center gap-2">
        <h1 class="text-2xl font-medium uppercase xl:text-3xl">{title}</h1>
      </div>
    </div>
    <p class="text-neutral xl:text-xl xl:leading-9 xl:tracking-[0.24px]">{description}</p>
  </div>
{/if}