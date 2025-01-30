<script lang="ts">
  import { base } from "$app/paths";

  type LinkCard = {
    title: string;
    description: string;
    href: string;
  };

  let { title, description, href }: LinkCard = $props();
</script>

<a {href} target="_blank" rel="noopener noreferrer" class="group space-y-10 px-9 py-6 hover:bg-linear-to-r from-secondary/90 to-primary/90">
  <div class="flex items-start justify-between">
    <h2 class="flex flex-row items-center text-xl sm:text-2xl uppercase font-medium group-hover:text-background">
      {title}&nbsp;&nbsp;&nbsp;<img src="{base}/icons/link-arrow.svg" alt="outlink" class="size-6" />
    </h2>
  </div>
  <p class="text-neutral text-base group-hover:text-background group-hover:font-medium">
    {description}
  </p>
</a>

