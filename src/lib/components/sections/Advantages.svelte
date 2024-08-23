<script>
  import DualHeader from '$lib/components/common/DualHeader.svelte';
  import AdvantageCard from '$lib/components/common/AdvantageCard.svelte';
</script>

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14 xl:gap-20">
  <DualHeader title="advantages">
    <p slot="subtitle">Here are a few reasons why users love Anki.</p>
  </DualHeader>
  <div class="flex flex-col w-full gap-9">
    <div class="grid gap-9 grow xl:grid-cols-2">
      <AdvantageCard
        title="synchronisation"
        description="The free AnkiWeb synchronisation service lets you sync your cards across devices."
        icon="/icons/synchronize.svg"
      />
      <AdvantageCard
        title="media support"
        description="Audio, images, videos, and scientific markup can be used in your flashcards."
        icon="/icons/gallery.svg"
      />
    </div>
    <div class="grid gap-9 grow xl:flex-row xl:grid-cols-3">
      <AdvantageCard
        title="customisation"
        description="Easily change your flashcard layouts and the timing of their reviews."
        icon="/icons/customisation.svg"
      />
      <AdvantageCard
        title="optimisation"
        description="Anki can handle decks of 100,000+ cards with no problems."
        icon="/icons/optimisation.svg"
      />
      <AdvantageCard
        title="add-ons"
        description="Install add-ons to extend Anki with new features and functionality."
        icon="/icons/add-ons.svg"
      />
    </div>
  </div>
</section>
