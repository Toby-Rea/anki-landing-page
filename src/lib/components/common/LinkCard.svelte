<script lang="ts">
  import { base } from "$app/paths";

  type LinkCard = {
    title: string;
    description: string;
    href: string;
  };

  let { title, description, href }: LinkCard = $props();
</script>

<a {href} target="_blank" rel="noopener noreferrer" class="card group">
  <div class="flex items-start justify-between">
    <h2 class="flex flex-row items-center text-xl sm:text-2xl uppercase font-medium group-hover:text-background">
      {title}&nbsp;&nbsp;&nbsp;<img src="{base}/icons/link-arrow.svg" alt="outlink" class="size-6" />
    </h2>
  </div>
  <p class="text-neutral text-base group-hover:text-background group-hover:font-medium">
    {description}
  </p>
</a>

<style>
  .card {
    @apply flex flex-col border-white/[13%] justify-between space-y-10 col-span-2 last-of-type:col-span-2 first-of-type:border-t-0 border-t-2 px-9 py-6 sm:border-t-0 sm:first-of-type:border-r-2 sm:last-of-type:border-t-2 sm:col-span-1 md:first-of-type:border-r-0 md:last-of-type:border-t-0 md:last-of-type:col-span-1 hover:bg-gradient-to-r from-secondary/90 to-primary/90;
  }
</style>
