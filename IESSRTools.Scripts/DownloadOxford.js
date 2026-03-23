function sleep(d){
  for(var t = Date.now();Date.now() - t <= d;);
}

function downloadARS(sleepTime = 1000) {
  $$('a.btn.icon-pdf').map(a => {
    url = a.href;
    filename = url.substring(url.lastIndexOf('/') + 1) + '.pdf';
    var linkTag = window.document.createElement('a');
    linkTag.download = filename;
    linkTag.href = url;
    linkTag.click();
    sleep(sleepTime);
  })
}

downloadARS();
