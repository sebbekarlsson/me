const applyImageClicks = () => {
    const images = document.querySelectorAll("img");


    for (const img of images) {
        img.addEventListener('click', (event) => {
            const href = event.target.getAttribute('src');
	    const dataSrc = event.target.getAttribute('data-src');
            window.location.href = dataSrc ? dataSrc : href;
        });
    }
}

document.addEventListener('DOMContentLoaded', function() {
    hljs.initHighlightingOnLoad();
    applyImageClicks();
});
