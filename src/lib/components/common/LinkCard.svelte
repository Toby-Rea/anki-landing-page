<script lang="ts">
  import { base } from '$app/paths';

  type LinkCard = {
    title: string;
    description: string;
    href: string;
  };

  let { title, description, href }: LinkCard = $props();
</script>

<a
  {href}
  target="_blank"
  rel="noopener noreferrer"
  class="group space-y-10 px-9 py-6 hover:bg-linear-to-r from-secondary/90 to-primary/90"
>
  <div class="flex items-start justify-between">
    <h3 class="flex flex-row items-center text-2xl capitalize font-medium">
      {title}&nbsp;&nbsp;&nbsp;<img
        src="{base}/icons/link-arrow.svg"
        alt="outlink"
        class="size-6"
      />
    </h3>
  </div>
  <p class="text-subtle leading-snug tracking-wide">
    {description}
  </p>
</a>
