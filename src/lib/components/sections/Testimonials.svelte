<script lang="ts">
  import DualHeader from '$lib/components/common/DualHeader.svelte';
  import { fade } from 'svelte/transition';

  type Testimonial = {
    quote: string;
    author: string;
    link?: string;
  };

  let index: number = $state(0);

  const testimonials: Testimonial[] = [
    {
      quote:
        'The single biggest change that Anki brings about is that it means memory is no longer a haphazard event, to be left to chance. Rather, it guarantees I will remember something, with minimal effort. That is, Anki makes memory a choice.',
      author: 'Michael A. Nielsen, "Augmenting Long-term Memory"',
      link: 'https://augmentingcognition.com/ltm.html',
    },
    {
      quote:
        'No other application [...] comes remotely close to Anki in terms of the number and power of features, flexibility in study, or implementation of spaced repetition.',
      author: 'K. M. Lawson, "Anki All The Way"',
      link: 'https://huginn.net/foolsworkshop/reviews/index.html%3fp=124.html',
    },
    {
      quote:
        "... consistent use of Anki has opened more doors for me intellectually than I could have imagined two years ago. And being a poor student, I'll be forever grateful that you've provided this software open-source and free of charge.",
      author: 'Keldin, via Email',
    },
  ];

  function changeQuote(direction: number) {
    index = (index + direction + testimonials.length) % testimonials.length;
  }
</script>

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14 xl:gap-20">
  <DualHeader title="testimonials">
    {#snippet subtitle()}
      <p>See what people are saying about Anki.</p>
    {/snippet}
  </DualHeader>
  <div
    class="md:py-12 md:px-14 gap-6 lg:gap-20 flex flex-col justify-between md:border-y-2 border-foreground/[13%]"
  >
    {#key index}
      <p class="text-lg lg:text-2xl font-light h-52 sm:h-32 md:h-24">
        <span in:fade={{ duration: 800 }}>{testimonials[index].quote}</span>
      </p>
    {/key}
    <div class="flex items-center justify-between h-9">
      {#key index}
        <span in:fade={{ duration: 800 }} class="pr-4 sm:text-lg text-neutral"
          >— {#if testimonials[index].link}
            <a
              class="text-primary hover:opacity-80"
              target="_blank"
              rel="noopener noreferrer"
              href={testimonials[index].link}
            >
              {testimonials[index].author}
            </a>
          {:else}
            {testimonials[index].author}
          {/if}
        </span>
      {/key}
      <div class="flex gap-4 min-w-fit">
        <button
          onclick={() => changeQuote(-1)}
          class="hover:opacity-60 hover:cursor-pointer text-foreground/80"
          aria-label="Previous testimonial"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
            class="size-8"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M6.75 15.75 3 12m0 0 3.75-3.75M3 12h18"
            />
          </svg>
        </button>
        <button
          onclick={() => changeQuote(+1)}
          class="hover:opacity-60 hover:cursor-pointer text-foreground/80"
          aria-label="Next testimonial"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
            class="size-8"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M17.25 8.25 21 12m0 0-3.75 3.75M21 12H3"
            />
          </svg>
        </button>
      </div>
    </div>
  </div>
</section>
