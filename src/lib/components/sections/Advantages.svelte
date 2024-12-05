<script lang="ts">
  import DualHeader from '$lib/components/common/DualHeader.svelte';
  import AdvantageCard from '$lib/components/common/AdvantageCard.svelte';

  type Advantage = {
    title: string;
    description: string;
    icon: string;
  };

  const advantages: Advantage[] = [
    {
      title: 'synchronisation',
      description:
        'The free AnkiWeb synchronisation service lets you sync your cards across devices.',
      icon: '/icons/synchronize.svg',
    },
    {
      title: 'media support',
      description: 'Audio, images, videos, and scientific markup can be used in your flashcards.',
      icon: '/icons/gallery.svg',
    },
    {
      title: 'customisation',
      description: 'Easily change your flashcard layouts and the timing of their reviews.',
      icon: '/icons/customisation.svg',
    },
    {
      title: 'optimisation',
      description: 'Anki can handle decks of 100,000+ cards with no problems.',
      icon: '/icons/optimisation.svg',
    },
    {
      title: 'add-ons',
      description: 'Install add-ons to extend Anki with new features and functionality.',
      icon: '/icons/add-ons.svg',
    },
  ];
</script>

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14 xl:gap-20">
  <DualHeader title="advantages">
    {#snippet subtitle()}
      <p>Here are a few reasons why users love Anki.</p>
    {/snippet}
  </DualHeader>
  <div class="grid xl:grid-cols-6 gap-9">
    {#each advantages as { title, description, icon }, i}
      <div class={i > 1 ? 'xl:col-span-2' : 'xl:col-span-3'}>
        <AdvantageCard {title} {description} {icon} />
      </div>
    {/each}
  </div>
</section>
