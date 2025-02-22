<script lang="ts">
  import { base } from "$app/paths";

  type AdvantageCard = {
    title: string;
    description: string;
    icon: string;
  };

  let { title, description, icon }: AdvantageCard = $props();
</script>

<div class="gap-3 flex flex-col">
  <div class="flex items-center gap-3">
    <img src="{base}{icon}" alt="icon" class="size-9" />
    <h3 class="text-xl font-medium capitalize">{title}</h3>
  </div>
  <p class="text-subtle leading-snug text-lg tracking-wide">{description}</p>
</div>
