<script lang="ts">
  import DualHeader from '$lib/components/common/DualHeader.svelte';
  import LinkCard from '$lib/components/common/LinkCard.svelte';

  type ContributingLinkCard = {
    title: string;
    description: string;
    href: string;
  };

  const contributingCards: ContributingLinkCard[] = [
    {
      title: 'open source',
      description:
        'If you know how to code you could help maintain Anki or create new add-ons/features.',
      href: 'https://github.com/ankitects/anki/blob/main/docs/contributing.md',
    },
    {
      title: 'share decks',
      description:
        "Sharing your deck can make it easier for others to start learning what you're studying.",
      href: 'https://docs.ankiweb.net/contrib#sharing-decks-publicly',
    },
    {
      title: 'translate anki',
      description:
        'Help with the efforts to translate Anki so it can become more accessible to everyone.',
      href: 'https://translating.ankiweb.net/intro.html',
    },
  ];
</script>

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14 xl:gap-20">
  <DualHeader title="contributing">
    {#snippet subtitle()}
      <p>
        Anki is a community project where anyone can make contributions to help improve everyone's
        experience.
      </p>
    {/snippet}
  </DualHeader>
  <div
    class="grid grid-cols-1 md:grid-cols-3 border-2 md:divide-x-2 divide-black/[13%] dark:divide-white/[13%] border-black/[13%] dark:border-white/[13%]"
  >
    {#each contributingCards as { title, description, href }}
      <LinkCard {title} {description} {href} />
    {/each}
  </div>
</section>
