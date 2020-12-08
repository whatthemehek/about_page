'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8f66a13771296b3265309c409b74c0a4",
"assets/FontManifest.json": "bdee00e386ed94edbe6b1154823cc4cd",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/fonts/Pacific-Northwest-Rough.ttf": "f4d034a68dd32b73a0d195f2d6677702",
"assets/fonts/times.ttf": "3f7dc90a1651b35e69718bbf38ed265a",
"assets/fonts/timesbd.ttf": "54e5495b1fa1fcb0958134a536546201",
"assets/fonts/timesbi.ttf": "53d9fc19eb63be2e53db3c5b2116ce98",
"assets/fonts/timesi.ttf": "9d7cd9dcba718421261104b35bac94a1",
"assets/graphics/B-Koppenhaver.JPG": "d40a958aba2aa8a4f2f814a016757f16",
"assets/graphics/Bg-Blue.png": "b81840aaf0034aaf4c7cdde6807dc3a7",
"assets/graphics/Bg-Red.png": "046d78da63e8a6f5755cf6d4265dcbb6",
"assets/graphics/Bg-Yellow.png": "457b168fa00d8871518f7c4423ec1899",
"assets/graphics/Blue-Image.png": "6b2b9487bedd1354e6c5a4a3edfc5411",
"assets/graphics/Box-Diagram.png": "701e8f222eeea3621bd96b6957a7823d",
"assets/graphics/Headshot.jpg": "7844075b5d9fc111e7d5b4286b2f5cd4",
"assets/graphics/J-Crnko.jpg": "ebc9707eb3fc36c4e3cab2ed04cb8c8c",
"assets/graphics/K-McCord.jpg": "de39e03b09a395a83ea0b2ab6919bad3",
"assets/graphics/L-Crews.jpg": "36dbfbac8834347a66da7093a1090526",
"assets/graphics/L-Ziegler.png": "aba95aeaed7e80741cda1606aa432909",
"assets/graphics/Mehek-Box-Icon.jpeg": "17855cb332f16bb84c0854d32d728023",
"assets/graphics/R-Gobel.jpg": "b334b842284630582d940c3bf31b9558",
"assets/graphics/Red-Image.png": "52cbfc6e91dc5b44d490ead94ae478d9",
"assets/graphics/Screenshot-1.png": "1d10c1b9616f60f426fe350ee8d6a3e5",
"assets/graphics/Screenshot-2.png": "7e60a9edb4a590a38f893d80b3602543",
"assets/graphics/Slide-One.png": "2079352031802fd9739c7d81d4d5d278",
"assets/graphics/Slide-Three.png": "e8411e2568c800bf89ac0289c159cf82",
"assets/graphics/Slide-Two.png": "f8c3efb597c7c56681f2f781236eff80",
"assets/graphics/Swipe-L.png": "64b65c96f6746701b7c7c2f89ccc6f60",
"assets/graphics/Swipe-R.png": "7db77959b38718ed4319379adbe982c2",
"assets/graphics/Title-Image.JPG": "289764f06512be45d4fb258694e2e9f3",
"assets/graphics/Title-Logo-Resized.png": "661f5d479e8e208eaf3a4ff943aac51c",
"assets/graphics/Title-Logo.png": "66d85e08a8c287b484567a6f00ea52e7",
"assets/graphics/unnamed.png": "ce81092be23c3c6a4b4020834a1619e8",
"assets/graphics/Usage-Map.png": "1e99a3910d93165dc644f5d2ff16c789",
"assets/graphics/Yellow-Image.png": "9f361980fcee2466ef2d8140ad2a2440",
"assets/NOTICES": "08eb0808aaf1c107e615df9caef7a1fc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "37d7a9079d8a19c6a80ecc3bb5828f00",
"icons/Icon-512.png": "4e7d1a74f614d8a76f5f7ee5fd77b4b4",
"index.html": "956c8ba8ea4cc1dad31c8e6fccb6bf73",
"/": "956c8ba8ea4cc1dad31c8e6fccb6bf73",
"main.dart.js": "9052776babe243bd1bc8d827795f3de4",
"manifest.json": "861bdb86d4dc27e7c5536408a5f9a40c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
    return self.skipWaiting();
  }
  if (event.message === 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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
