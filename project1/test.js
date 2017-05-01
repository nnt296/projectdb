var dict = [];
dict.push({
    key: "BA01",
    value: "3"
});
dict.push({
    key: "NA04",
    value: "2"
});
// console.log(data);
// function doit () {
//     xmlhttp = new XMLHttpRequest();
//     xmlhttp.onreadystatechange = function () {
//         if (this.readyState === 4 && this.status === 200) {
//             console.log(this.responseText);
//         }
//     };
//     xmlhttp.open("GET", "test.php?action=post", true);
//     xmlhttp.setRequestHeader('Content-Type', 'application/json');
//     // xmlhttp.send();
//     xmlhttp.send(JSON.stringify(data));
// }
function doit() {
    // $.post("test.php", {example: "text"}, function (result) {
    //    $('#cart').text(result);
    // });

    $.ajax({
        url:"test.php",
        data: JSON.stringify(dict),
        contentType: 'application/json',
        type: 'POST',
        success: function (result) {
            $('#cart').text(result);
        }
    })
}