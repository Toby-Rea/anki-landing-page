<script lang="ts">
  import { base } from '$app/paths';
  import DualHeader from '$lib/components/common/DualHeader.svelte';

  type Testimonial = {
    quote: string;
    author: string;
  };

  let index: number = $state(0);
  let opacity: number = $state(100);

  const testimonials: Testimonial[] = [
    {
      quote:
        'The single biggest change that Anki brings about is that it means memory is no longer a haphazard event, to be left to chance. Rather, it guarantees I will remember something, with minimal effort. That is, Anki makes memory a choice.',
      author: 'Michael A. Nielsen, "Augmenting Long-term Memory"',
    },
    {
      quote:
      'No other application [...] comes remotely close to Anki in terms of the number and power of features, flexibility in study, or implementation of spaced repetition.',
      author: 'K. M. Lawson, "Anki All The Way"',
    },
    {
      quote:
        "... consistent use of Anki has opened more doors for me intellectually than I could have imagined two years ago. And being a poor student, I'll be forever grateful that you've provided this software open-source and free of charge.",
      author: 'keldin, via Email',
    },
  ];

  function changeQuote(direction: number) {
    opacity = 0;
    setTimeout(() => {
      opacity = 100;
      index = (index + direction + testimonials.length) % testimonials.length;;
    }, 300);
   
  }

  // Calculate the required height of the quote container to display a consistent height and avoid
  // layout shifts when cycling through testimomials with inconsistent lengths.
  let innerWidth = $state(0);
  const lineHeight = $derived(innerWidth >= 1024 ? 40 : 28);
  const averageCharsPerLine = $derived(Math.ceil(innerWidth * (innerWidth >= 1024 ? 0.05 : 0.06)));
  const maxHeight = $derived(
    Math.max(
      ...testimonials.map((testimonial) => {
        const lines = Math.ceil(testimonial.quote.length / averageCharsPerLine);
        return lines * lineHeight;
      }),
    ),
  );
</script>

<svelte:window bind:innerWidth />

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14 xl:gap-20">
  <DualHeader title="testimonials">
    {#snippet subtitle()}
      <p>See what people are saying about Anki.</p>
    {/snippet}
  </DualHeader>
  <div
    class="md:py-24 md:px-14 gap-6 lg:gap-20 flex flex-col justify-between md:border-y-2 border-white/[13%]"
  >
    <p class="text-lg lg:text-3xl font-light tracking-[1.02px] transition duration-300 opacity-{opacity}" style="height: {maxHeight}px;">
      "{testimonials[index].quote}"
    </p>
    <div class="flex items-center justify-between h-9">
      <span class="pr-8 sm:text-lg text-neutral transition duration-300 opacity-{opacity}">— {testimonials[index].author}</span>
      <div class="flex gap-6 lg:gap-14 min-w-fit">
        <button onclick={() => changeQuote(-1)} class="hover:opacity-60">
          <img src="{base}/icons/left-arrow.svg" alt="left-arrow" class="size-6 lg:size-9" />
        </button>
        <button onclick={() => changeQuote(+1)} class="hover:opacity-60">
          <img src="{base}/icons/right-arrow.svg" alt="right-arrow" class="size-6 lg:size-9" />
        </button>
      </div>
    </div>
  </div>
</section>
