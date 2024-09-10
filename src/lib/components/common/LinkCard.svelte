<script lang="ts">
  export let title: string;
  export let description: string;
  export let href: string;
</script>

<a
  {href}
  target="_blank"
  rel="noopener noreferrer"
  class="border-2 border-white/[13%] flex flex-col gap-6 justify-between xl:aspect-[5/6] px-14 py-9 hover:shadow-[0_5px_21px_rgba(150_,140_,168_,_0.4)] transition-all duration-75"
>
  <div class="flex items-start justify-between">
    <h2 class="text-xl font-medium uppercase xl:text-4xl pr-2">{title}</h2>
    <img src="/icons/link-arrow.svg" alt="outlink" class="size-6 xl:size-8" />
  </div>
  <p class="text-neutral xl:text-xl">{description}</p>
</a>
