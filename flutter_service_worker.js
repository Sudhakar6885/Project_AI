'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a774dc4cbaf66b7f096c465b13e5a186",
"assets/AssetManifest.bin.json": "202fc128333c694026f8edc97cbce143",
"assets/AssetManifest.json": "8d36dbb37ba76319da0806768cd8de20",
"assets/assets/project_ai_Bard.jpeg": "721bb1eaafdc7ebead82acfea127e3f1",
"assets/assets/project_ai_c.jpeg": "3da9f13c3e3fee7df16cbb9905cf1f49",
"assets/assets/project_ai_chatgpt.jpeg": "4b0c882a455045396125477fc3bb23e8",
"assets/assets/project_ai_chatspot.jpeg": "b9e5e7664273df5a6310c1de3fd2bb4c",
"assets/assets/project_ai_claude.jpeg": "c5bd5eac8cb84badfd7e05fd6b767f38",
"assets/assets/project_ai_cohesive.jpeg": "049943cd871b5fdabde5fab82340be94",
"assets/assets/project_ai_docus.jpeg": "a064f707d19d67b20a41cdb2b081448b",
"assets/assets/project_ai_emailmagic.jpeg": "8c1e31fbe12f9de89691078363b882f4",
"assets/assets/project_ai_feathery.jpeg": "e0097484e8df9b3264768abbcec64c48",
"assets/assets/project_ai_fliki.jpeg": "6f0c7ae7a150c1fa4e7fb919ee2b56fd",
"assets/assets/project_ai_gptgo.jpeg": "d02eb2a8d493c5a0595ac16443ff61d9",
"assets/assets/project_ai_hugging.jpeg": "8951f32bad52e068c13ed43f9d9f44ef",
"assets/assets/project_ai_icon.jpg": "7d865f5058da8efa9cb6ade6192cb3ea",
"assets/assets/project_ai_jam_dev.jpeg": "33ab7bf5f9ad356895384c99dd4ba2cd",
"assets/assets/project_ai_jasper.jpeg": "ab8623b6ed432dac8773f032bf199a86",
"assets/assets/project_ai_Kommunicate.jpeg": "e3cf339ce065736c970652f0b8d5150a",
"assets/assets/project_ai_logomaster.jpeg": "caf942a3539bf75de143116e0c518807",
"assets/assets/project_ai_magify.jpeg": "3d22f8f5e7beb4dae9baff2ed80c0149",
"assets/assets/project_ai_microsoft_copilot.jpg": "3c50c48bfd2e43b58aa03f27a2de478c",
"assets/assets/project_ai_midjourney.jpeg": "d79dcaf55f256132bc6eff8a0f966506",
"assets/assets/project_ai_pictory.jpeg": "392e92ba2576b57c13156c314d99f29c",
"assets/assets/project_ai_poe.jpeg": "5732fdc1179b94a03f575f13c9bfdbb2",
"assets/assets/project_ai_reflect.jpeg": "9b57cd06b1c88ee358a97571536f8415",
"assets/assets/project_ai_remini.jpeg": "495088962d996af8fefe8f6d1f695125",
"assets/assets/project_ai_replit.jpeg": "86bf75373b33dd7f7c174d365c672d02",
"assets/assets/project_ai_resumAI.jpeg": "ffab4c7636b3a8c533f0dda4c4bd70a3",
"assets/assets/project_ai_slides_ai.jpeg": "e5fb2e9d86fa714e9f8903b00adb1a6e",
"assets/assets/project_ai_soundraw.jpeg": "70b236ec672d3f4e00b1d0f60b05a777",
"assets/assets/project_ai_spoke.jpeg": "b76a248e065742754234840abe0b5249",
"assets/assets/project_ai_starrytars.jpeg": "99e8cbef61a6cb0f9db5eb297cfe356e",
"assets/assets/project_ai_stockimg.jpeg": "ba2ff811b677164b07c2ce321be01f34",
"assets/assets/project_ai_synthesia.jpeg": "1b7e0741a61b9a15977845ee54146b74",
"assets/assets/project_ai_writesonic.jpeg": "3e2db3b57cb21e236a56442db14524b4",
"assets/assets/project_ai_you.jpeg": "307170b64f398f08310d7c13a0c1124d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "baacdbfcd62b49cd389c9a8d7c176c58",
"assets/NOTICES": "c955d4447e9a60b0d46160e8413023d5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "f86bec7e69ec38c5273bff50c89db427",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "a4628e3d2a82aed3cec39fa8210cd6d5",
"/": "a4628e3d2a82aed3cec39fa8210cd6d5",
"main.dart.js": "fc878398feed036b4e2904e1ba12e380",
"manifest.json": "e22c0299ed6e72966815ada2c2675b6d",
"version.json": "6163c391bb860923829dbdfb3e902291"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
