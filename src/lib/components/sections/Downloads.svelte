<script lang="ts">
  import DualHeader from '$lib/components/common/DualHeader.svelte';
  import DownloadLink from '../common/DownloadLink.svelte';
  import Dropdown from '../common/Dropdown.svelte';

  enum QtOptions {
    Qt6 = 'qt6',
    Qt5 = 'qt5',
  }

  const options: string[] = Object.values(QtOptions);
  let qt_version: string = QtOptions.Qt6;
  let anki_version: string = '24.06.3';

  function buildDownloadURL(platform: string, extension: string): string {
    return `https://github.com/ankitects/anki/releases/download/${anki_version}/anki-${anki_version}-${platform}-${qt_version}.${extension}`;
  }

  $: download_options = {
    desktop: {
      Windows: [
        {
          href: buildDownloadURL('windows', 'exe'),
          text: `Anki ${anki_version} ${qt_version}`,
          icon: '/icons/download.svg',
          supportsQt5: true,
        },
      ],
      MacOS: [
        {
          href: buildDownloadURL('mac-apple', 'dmg'),
          text: `Apple Silicon ${anki_version} ${qt_version}`,
          icon: '/icons/download.svg',
          supportsQt5: false,
        },
        {
          href: buildDownloadURL('mac-intel', 'dmg'),
          text: `Apple Intel ${anki_version} ${qt_version}`,
          icon: '/icons/download.svg',
          supportsQt5: true,
        },
      ],
      Linux: [
        {
          href: buildDownloadURL('linux', 'tar.zst'),
          text: `Anki ${anki_version} ${qt_version}`,
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
  };
</script>

<section class="flex flex-col justify-center w-full py-5 sm:py-9 gap-14">
  <DualHeader title="downloads">
    <p slot="subtitle">
      Choose the correct download for your platform. Installation guides can be found <a
        href="https://docs.ankiweb.net/getting-started.html#installing--upgrading"
        class="text-primary hover:opacity-80"
        target="_blank"
        rel="noopener noreferrer"
      >
        here
      </a>
    </p>
  </DualHeader>
  <div class="flex flex-col w-full xl:flex-row gap-9">
    <div class="grow border-white/[13%] md:border-2 flex flex-col md:px-14 md:py-9 gap-8 md:gap-20">
      <div class="flex items-center justify-between gap-12">
        <div class="flex flex-col gap-4 w-full">
          <div class="flex justify-between items-center">
            <h2 class="text-2xl font-medium uppercase md:text-4xl">Desktop</h2>
            <Dropdown {options} bind:selected={qt_version} />
          </div>
          <p class="text-lg md:text-2xl text-neutral">
            Qt6 is recommended for most users, the reasoning can be found <a
              href="https://docs.ankiweb.net/platform/windows/installing.html#qt5-vs-qt6"
              class="text-primary hover:opacity-80"
              target="_blank"
              rel="noopener noreferrer"
            >
              here
            </a>
          </p>
        </div>
      </div>
      <div class="flex flex-col md:divide-y-2 divide-y divide-white/[13%]">
        {#each Object.entries(download_options.desktop) as [key, value]}
          <div class="flex justify-between py-5 md:px-5">
            <h2 class="text-xl font-medium md:text-3xl">{key}</h2>
            <div class="flex flex-col items-end gap-3">
              {#each value as { href, text, icon, supportsQt5 }}
                {#if supportsQt5 || qt_version === QtOptions.Qt6}
                  <DownloadLink {href} {text} {icon} />
                {/if}
              {/each}
            </div>
          </div>
        {/each}
      </div>
    </div>
    <div
      class="xl:w-[45%] border-white/[13%] md:border-2 flex flex-col md:px-14 md:py-9 gap-8 md:gap-20"
    >
      <div class="flex flex-col gap-4 w-full">
        <h2 class="text-2xl font-medium uppercase md:text-4xl">Mobile</h2>
        <p class="text-lg md:text-2xl text-neutral">
          AnkiMobile is the official iOS app and all purchases help to fund Anki's development.
        </p>
      </div>
      <div class="flex flex-col md:divide-y-2 divide-y divide-white/[13%]">
        {#each Object.entries(download_options.mobile) as [key, value]}
          <div class="flex justify-between py-5 md:px-5">
            <h2 class="text-xl font-medium md:text-3xl">{key}</h2>
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
