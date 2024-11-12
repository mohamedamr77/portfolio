'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "47718d36eadfc517246ee90e4d7a9cb1",
"assets/AssetManifest.bin.json": "e7e30508352378e93e9e51a9d8d14cac",
"assets/AssetManifest.json": "7d53e54fc7b315926b34c2a443f483d1",
"assets/assets/images/book_app.jpg": "6fae37c84be8141abf11a00ef6405b35",
"assets/assets/images/cafeApp.jpg": "f7811732b372b16ad6eba0d4ed9d5b31",
"assets/assets/images/currenciesApp.jpg": "85ac75a96c5a09f3fde22e037c5946d1",
"assets/assets/images/dashboardApp.jpg": "9e27c93ec78354e7fd4c66d7973335d3",
"assets/assets/images/desktobIcon.svg": "b15b503a65334f91712e66f1c490c745",
"assets/assets/images/Facebook%2520-%2520Negative.svg": "c3a3b44e027952b68ddfd7f3919ce82b",
"assets/assets/images/flutterAdvancedCourseMvvM.jpg": "3edafe6f49a087fa4bf5785eb6a4905f",
"assets/assets/images/flutterPayment.jpg": "3bafedf6ec1e4c35d965301a6cb303f5",
"assets/assets/images/flutterResponsovieCourse.jpg": "65a13a719dc41e0691f62dc677072015",
"assets/assets/images/gitAndGithub.png": "ad8ebd617150419fa04abb6f3588f920",
"assets/assets/images/github_icon.svg": "4d56b3683c48ed7c70e76b81fb262a4a",
"assets/assets/images/Instagram%2520-%2520Negative.svg": "46d4da3aaee8794a3bf34eeb2c1fe57f",
"assets/assets/images/LinkedIn%2520-%2520Negative.svg": "9c6955727f49d96a1f9c80b0aa3bfb12",
"assets/assets/images/moamrCircle.jpg": "120dcac37dcf24545ccbc0b08ca52c2b",
"assets/assets/images/moamrCircleWhite.jpg": "90dc5ac78a6a02225d0e5d6096e00bdb",
"assets/assets/images/mobileApp.svg": "cc13e0b3e6311ca6909d58c4a4eb9c22",
"assets/assets/images/Mohamed%2520amr%25202.png": "78e93ed23dca5e354ffdfaffbfb56dbd",
"assets/assets/images/Mohamed%2520amr.jpg": "90b4e56da15b163f1b39fbf48f43fcee",
"assets/assets/images/news_app.jpg": "f63d6db1a091ee3d82449f5fc86389e9",
"assets/assets/images/perfectBody.png": "007e8f9a32b92fd1bfacb51536ef87ed",
"assets/assets/images/perfectBody2.png": "fe4cb8fcfc808f5a49e8b84b64ede2fb",
"assets/assets/images/quiz_app.jpg": "9da542ff8b8c01d79239f9f3b1186d2f",
"assets/assets/images/softSkills.png": "171726a100fa2280e265ba9fedcf223e",
"assets/assets/images/tablet.svg": "f9a0fbade90cfc99539ccb62afeec04c",
"assets/assets/images/to_do_app.jpg": "12898de8a6245744d625510eed4b3bc3",
"assets/assets/images/Twitter%2520-%2520Negative.svg": "0e027acde989f45af7514edf98b88fec",
"assets/assets/images/Web%2520Designs.png": "b5f6546d6291bdf408557b963213f308",
"assets/assets/images/webIcon.png": "a5573d74210aee456a0a073e110b49d2",
"assets/FontManifest.json": "586a577884950e57bf983284a5b6ab08",
"assets/fonts/MaterialIcons-Regular.otf": "32e847aa4e73c835a01198a4ad0bc56e",
"assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/NOTICES": "832f9b63e8d93d5418be9620c48cb0d6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"flutter_bootstrap.js": "d8185787f464110e93a64e7b0706d145",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "91693c5b7afeddbdfc234c325bfabd65",
"/": "91693c5b7afeddbdfc234c325bfabd65",
"main.dart.js": "0a52bc80cc92ab549299877a627e12c9",
"manifest.json": "3ffe0642f03ea16343debcc34f02e7ad",
"version.json": "bac40db0904e7dfbc0ecabf69add18a0"};
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
