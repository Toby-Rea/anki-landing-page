<script>
  import { base } from '$app/paths';
</script>

<section class="flex items-center justify-between min-w-full @container">
  <div class="grid size-full max-w-3xl @container py-[10cqw]">
    <h2 class="text-subtle tracking-widest text-sm font-bold mb-[max(2cqw,_0.5em)]">
      POWERFUL, INTELLIGENT FLASHCARDS.
    </h2>
    <h1 class="font-bold leading-none tracking-tight text-[max(11cqw,_2.5em)]">
      Remembering is easier with <span class="text-primary">Anki</span>
    </h1>
    <p class="text-subtle leading-snug text-[max(3cqw,_1em)] mt-[max(4cqw,_1em)]">
      Anki is a flashcard program that helps you spend more time on challenging material, and less
      on what you already know.
    </p>
    <div
      class="grid grid-cols-2 w-full min-w-[60cqw] max-w-xl h-[max(9cqw,_3em)] mt-[max(6cqw,_1.25em)]"
    >
      <a
        href="#downloads"
        onclick={(event) => {
          event.preventDefault();
          document.querySelector('#downloads')?.scrollIntoView({ behavior: 'smooth' });
        }}
        class="hover:opacity-80 h-full font-bold rounded bg-gradient-to-r from-primary-darker to-primary text-background flex justify-center items-center text-[max(3cqw,_1em)] transition-opacity duration-300 ease-out"
      >
        Download Anki
      </a>
      <a
        href="https://docs.ankiweb.net/background.html"
        aria-label="Anki Manual: Background"
        target="_blank"
        rel="noopener noreferrer"
        class="group hover:opacity-80 flex items-center gap-2 justify-center h-full font-bold text-foreground text-[max(3cqw,_1em)] transition-opacity duration-300 ease-out"
      >
        Learn more
        <svg
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 24 24"
          fill="currentColor"
          class="size-5 group-hover:translate-x-1 transition-transform duration-300 ease-out"
        >
          <path
            fill-rule="evenodd"
            d="M12.97 3.97a.75.75 0 0 1 1.06 0l7.5 7.5a.75.75 0 0 1 0 1.06l-7.5 7.5a.75.75 0 1 1-1.06-1.06l6.22-6.22H3a.75.75 0 0 1 0-1.5h16.19l-6.22-6.22a.75.75 0 0 1 0-1.06Z"
            clip-rule="evenodd"
          />
        </svg>
      </a>
    </div>
  </div>
  <img src="{base}/icons/anki.svg" alt="logo" class="size-1/4 mx-auto hidden lg:block" />
</section>
