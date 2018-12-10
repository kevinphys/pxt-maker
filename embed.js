(function() {
    if (window.ksRunnerInit) return;

    // This line gets patched up by the cloud
    var pxtConfig = {
    "relprefix": "/pxt-maker/",
    "verprefix": "",
    "workerjs": "/pxt-maker/worker.js",
    "monacoworkerjs": "/pxt-maker/monacoworker.js",
    "pxtVersion": "5.1.1",
    "pxtRelId": "",
    "pxtCdnUrl": "/pxt-maker/",
    "commitCdnUrl": "/pxt-maker/",
    "blobCdnUrl": "/pxt-maker/",
    "cdnUrl": "/pxt-maker/",
    "targetVersion": "0.0.0",
    "targetRelId": "",
    "targetUrl": "",
    "targetId": "maker",
    "simUrl": "/pxt-maker/simulator.html",
    "partsUrl": "/pxt-maker/siminstructions.html",
    "runUrl": "/pxt-maker/run.html",
    "docsUrl": "/pxt-maker/docs.html",
    "isStatic": true
};

    var scripts = [
        "/pxt-maker/highlight.js/highlight.pack.js",
        "/pxt-maker/bluebird.min.js",
        "/pxt-maker/semantic.js",
        "/pxt-maker/marked/marked.min.js",
        "/pxt-maker/target.js",
        "/pxt-maker/pxtembed.js"
    ]

    if (typeof jQuery == "undefined")
        scripts.unshift("/pxt-maker/jquery.js")

    var pxtCallbacks = []

    window.ksRunnerReady = function(f) {
        if (pxtCallbacks == null) f()
        else pxtCallbacks.push(f)
    }

    window.ksRunnerWhenLoaded = function() {
        pxt.docs.requireHighlightJs = function() { return hljs; }
        pxt.setupWebConfig(pxtConfig || window.pxtWebConfig)
        pxt.runner.initCallbacks = pxtCallbacks
        pxtCallbacks.push(function() {
            pxtCallbacks = null
        })
        pxt.runner.init();
    }

    scripts.forEach(function(src) {
        var script = document.createElement('script');
        script.src = src;
        script.async = false;
        document.head.appendChild(script);
    })

} ())
