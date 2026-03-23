function sleep(d){
  for(var t = Date.now();Date.now() - t <= d;);
}

function downloadSpringerNature(sleepTime = 1000) {
  $$('#results-list a.pdf-link').map(a => {
    url = a.href;
    filename = url.substring(url.lastIndexOf('%2F') + 3, url.lastIndexOf('.')) + '.pdf';
    var linkTag = window.document.createElement('a');
    linkTag.download = filename;
    linkTag.href = url;
    linkTag.click();
    sleep(sleepTime);
  })
  console.log("done.");
}

downloadSpringerNature();
