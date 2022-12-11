const applyImageClicks = () => {
    const images = document.querySelectorAll("img");


    for (const img of images) {
        img.addEventListener('click', (event) => {
            const href = event.target.getAttribute('src');
            window.location.href = href;
        });
    }
}

document.addEventListener('DOMContentLoaded', function() {
    hljs.initHighlightingOnLoad();
    applyImageClicks();
});
