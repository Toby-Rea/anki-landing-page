<script lang="ts">
  type DualHeader = {
    title: string;
    subtitle: any;
  };

  let { title, subtitle }: DualHeader = $props();

  const id = $derived(title.toLowerCase().replace(/\s/g, '-'));
</script>

<hgroup class="flex flex-col gap-3">
  <h2 {id} class="text-2xl xl:text-4xl tracking-[1.65px] uppercase font-medium scroll-mt-32 text-transparent bg-linear-10 bg-clip-text from-primary-darker to-primary">
    {title}
  </h2>
  <div class="text-lg xl:text-3xl xl:tracking-[1.02px] xl:leading-[45px] text-neutral">
    {@render subtitle()}
  </div>
</hgroup>
