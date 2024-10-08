<script lang="ts">
  export let title: string;

  $: id = title.toLowerCase().replace(/\s/g, '-');
</script>

<hgroup class="flex flex-col gap-3">
  <h2 {id} class="text-3xl xl:text-5xl tracking-[1.65px] uppercase font-medium scroll-mt-32">
    {title}
  </h2>
  <div class="text-xl xl:text-4xl xl:tracking-[1.02px] xl:leading-[45px] text-neutral">
    <slot name="subtitle" />
  </div>
</hgroup>
