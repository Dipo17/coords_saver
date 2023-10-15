const copyToClipboard = str => {
    const el = document.createElement('textarea');
    el.value = str;
    document.body.appendChild(el);
    el.select();
    document.execCommand('copy');
    document.body.removeChild(el);
};

addEventListener("message", (e) => {
    const data = e.data;

    if(data.message == "copy") {
        copyToClipboard(data.coords);
    }
})
