document.querySelector('#txt-field').addEventListener('keypress', function (e) {
  if (e.key === 'Enter') {
  }
});
document.querySelector('#add-btn').addEventListener('click', function (e) {
  var textt = document.getElementById("txt-field").value;
  console.log('clicked');
  if (textt.length > 0) {
    var ul = document.getElementById("list-id");
    document.getElementById("txt-field").value = '';
    var li = document.createElement("li");
    li.appendChild(document.createTextNode(textt));
    addDeleteButton(li);
    ul.appendChild(li);
  }
});

function addDeleteButton(parent) {
  var buttonElem = parent.appendChild(document.createElement("button"));
  buttonElem.innerHTML = "Delete";
  buttonElem.onclick = function () {
    this.parentElement.remove();
  }
}