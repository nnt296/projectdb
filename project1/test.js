function addText() {
    $('#cart').append("<p>Hello</p>");
}
function clearText() {
    $('#cart').empty();
}
var x = new MutationObserver(function (e) {
    if (e[0].removedNodes) console.log(1);
});

x.observe(document.getElementById('cart'), { childList: true });