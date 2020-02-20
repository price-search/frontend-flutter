'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/main.dart.js": "bfc600c086113082e190cb7a624d528e",
"/assets/lib/images/price-search.svg": "c45443991b409fcf748651b558d21657",
"/assets/lib/images/ps.png": "bdc6efb675f4f11761f858d9e9f3cfe9",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/AssetManifest.json": "1db22a9bb1aae68e807aff4988fc1be9",
"/assets/FontManifest.json": "f7161631e25fbd47f3180eae84053a51",
"/assets/LICENSE": "be799750435a54a1480b4210a8c0f1c0",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/index.html": "17d6d2f56486900bc9cb33e729f1feb1",
"/manifest.json": "a58ec2a5d141fd5365bc201c0456a69c",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
