<script lang="ts">
  import { Select, type Selected } from 'bits-ui';
  import { flyAndScale } from '$lib/utils/transitions';

  type DropdownOption = {
    value: any;
    label: string;
  };
  let { selected = $bindable(), options }: { selected: Selected<any>; options: DropdownOption[] } =
    $props();
</script>

<Select.Root items={options} bind:selected>
  <Select.Trigger
    class="lg:w-44 bg-background focus:outline-none focus:shadow-solid border-2 border-white/[13%] text-white font-medium lg:text-2xl px-5 py-2.5 flex items-center justify-center gap-5 capitalize hover:opacity-80"
  >
    <Select.Value />
    <svg
      class="size-4 md:size-6"
      viewBox="0 0 25 25"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M19.5464 8.75L12.0464 16.25L4.54639 8.75"
        stroke="white"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
    </svg>
  </Select.Trigger>
  <Select.Content
    sideOffset={2}
    transition={flyAndScale}
    class="grid gap-1 w-full bg-background mt-3 border-2 border-white/[13%] p-1"
  >
    {#each options as option}
      <Select.Item
        class="lg:text-xl py-2.5 hover:opacity-80 hover:bg-white/[3%] font-medium text-center data-[highlighted]:text-primary cursor-pointer"
        value={option.value}
        label={option.label}
      >
        {option.label}
      </Select.Item>
    {/each}
  </Select.Content>
</Select.Root>
