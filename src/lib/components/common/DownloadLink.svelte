<script lang="ts">
  export let icon: string;
  export let href: string;
  export let text: string;
</script>

<div>
  <a
    {href}
    class="flex items-center gap-1 text-lg font-medium text-right md:gap-2 md:text-2xl text-primary hover:opacity-60"
  >
    <img src={icon} alt="download" class="size-6 md:size-8" />
    <span class="capitalize">{text}</span>
  </a>
</div>
