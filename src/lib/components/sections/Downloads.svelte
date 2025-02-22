<script lang="ts">
  import DualHeader from '$lib/components/common/DualHeader.svelte';
  import DownloadLink from '$lib/components/common/DownloadLink.svelte';
  import { base } from '$app/paths';

  const anki_version: string = '25.02';

  function buildDownloadURL(platform: string, extension: string): string {
    return `https://github.com/ankitects/anki/releases/download/${anki_version}/anki-${anki_version}-${platform}-qt6.${extension}`;
  }

  const download_options = $derived({
    desktop: {
      Windows: [
        {
          href: buildDownloadURL('windows', 'exe'),
          text: `Anki ${anki_version}`,
          icon: '/icons/download.svg',
          supportsQt5: true,
        },
      ],
      macOS: [
        {
          href: buildDownloadURL('mac-apple', 'dmg'),
          text: `Anki Apple Silicon ${anki_version}`,
          icon: '/icons/download.svg',
          supportsQt5: false,
        },
        {
          href: buildDownloadURL('mac-intel', 'dmg'),
          text: `Anki Apple Intel ${anki_version}`,
          icon: '/icons/download.svg',
          supportsQt5: true,
        },
      ],
      Linux: [
        {
          href: buildDownloadURL('linux', 'tar.zst'),
          text: `Anki ${anki_version}`,
          icon: '/icons/download.svg',
          supportsQt5: true,
        },
      ],
    },
    mobile: {
      iOS: [
        {
          href: 'https://itunes.apple.com/us/app/ankimobile-flashcards/id373493387',
          text: 'AnkiMobile',
          icon: '/icons/apple-appstore.svg',
        },
      ],
      Android: [
        {
          href: 'https://play.google.com/store/apps/details?id=com.ichi2.anki',
          text: 'AnkiDroid',
          icon: '/icons/google-appstore.svg',
        },
      ],
    },
  });
</script>

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14">
  <DualHeader title="downloads">
    {#snippet subtitle()}
      <p>
        Choose the correct download for your platform. For details, see the <a
          href="https://docs.ankiweb.net/getting-started.html#installing--upgrading"
          aria-label="Anki Manual: Installing and Upgrading"
          class="text-primary hover:opacity-80"
          target="_blank"
          rel="noopener noreferrer"
        >
          installation guides
        </a>.
      </p>
    {/snippet}
  </DualHeader>
  <div class="grid xl:grid-cols-5 w-full xl:flex-row gap-9">
    <div
      class="xl:col-span-3 border-black/[13%] dark:border-white/[13%] md:border-2 flex flex-col md:px-14 md:py-9 gap-8 md:gap-20"
    >
      <div class="flex items-center justify-between gap-12">
        <div class="flex flex-col gap-4 w-full">
          <div class="flex justify-between items-center">
            <h3 class="text-xl font-medium capitalize md:text-3xl">Desktop</h3>
          </div>
          <p class="leading-snug tracking-wide text-subtle">
            If you have a <a
              href="https://support.apple.com/en-au/116943"
              class="text-primary hover:opacity-80"
              target="_blank"
              rel="noopener noreferrer">recent Mac</a
            >, pick the Apple Silicon version for better performance and battery life. Older Macs will
            need to use the Intel version instead.
          </p>
        </div>
      </div>
      <div class="flex flex-col md:divide-y-2 divide-y divide-black/[13%] dark:divide-white/[13%]">
        {#each Object.entries(download_options.desktop) as [key, value]}
          <div class="flex justify-between py-5 md:px-5">
            <h4 class="text-xl tracking-wide">{key}</h4>
            <div class="flex flex-col items-end gap-3">
              {#each value as { href, text, icon }}
                <DownloadLink {href} {text} {icon} />
              {/each}
            </div>
          </div>
        {/each}
      </div>

      <div>
        <a
          href="https://docs.ankiweb.net/getting-started.html#installing--upgrading"
          target="_blank"
          rel="noopener noreferrer"
          class="flex items-center gap-1 text-base font-medium md:text-xl md:px-5 text-primary hover:opacity-60"
          >Installation Guide <img
            src="{base}/icons/link-arrow.svg"
            alt="outlink"
            class="size-4"
          /></a
        >

        <a
          href="https://github.com/ankitects/anki/releases"
          target="_blank"
          rel="noopener noreferrer"
          class="flex items-center gap-1 text-base font-medium md:text-xl md:px-5 text-primary hover:opacity-60"
          >Change Notes & Older Releases <img
            src="{base}/icons/link-arrow.svg"
            alt="outlink"
            class="size-4"
          /></a
        >
      </div>
    </div>
    <div
      class="xl:col-span-2 border-black/[13%] dark:border-white/[13%] md:border-2 flex flex-col md:px-14 md:py-9 gap-8 md:gap-20"
    >
      <div class="flex flex-col gap-4 w-full">
        <h3 class="text-xl font-medium capitalize md:text-3xl">Mobile</h3>
        <p class="leading-snug tracking-wide text-subtle">
          AnkiMobile is the official iOS app and all purchases help fund Anki's development.
        </p>
      </div>
      <div class="flex flex-col md:divide-y-2 divide-y divide-black/[13%] dark:divide-white/[13%]">
        {#each Object.entries(download_options.mobile) as [key, value]}
          <div class="flex justify-between py-5 md:px-5">
            <h4 class="text-xl tracking-wide">{key}</h4>
            <div class="flex flex-col items-end gap-3">
              {#each value as { href, text, icon }}
                <DownloadLink {href} {text} {icon} />
              {/each}
            </div>
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>
