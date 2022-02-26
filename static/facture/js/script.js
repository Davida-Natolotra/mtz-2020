function Print(){
  Popup($('.invoice')[0].outerHTML);
  function Popup(data) {
    window.print();
    return true;
  }
}

function ExportPdf() {
  let factnum = $('#factnum').html();
  console.log("factnum = "+factnum);
  var filename;
  if ($('#ptitle').html() === 'Prévisualisation du BL'){
    filename = "BL";
  }
  else if ($('#ptitle').html() === 'Prévisualisation de la facture'){
    filename = "Facture";
  }
  var name = filename+'-'+factnum+".pdf";
  console.log('name ='+name);
  if ($("#layout").val() === "1"){
    ExpOne(name)
  }
  else{
    ExpTwo(name)
  }
}

// function ExpOne(name){
//   kendo.drawing.drawDOM("#myCanvas", {
//     paperSize: "A4",
//     margin: {
//       top: "1cm",
//       bottom: "1cm",
//       left:"1cm",
//       right:"1cm",
//       keepTogether: ".prevent-split"
//     },
//     scale: 0.7,
//     landscape: false
//     // height: 500
//   }).then(function(group) {
//     kendo.drawing.pdf.saveAs(group, name)
//   });
// }

// function ExpTwo(name){
//   kendo.drawing.drawDOM("#myCanvasDouble", {
//     paperSize: "A4",
//     margin: {
//       top: "0.5cm",
//       bottom: "0.5cm",
//       left:"0.5cm",
//       right:"0.5cm",
//       keepTogether: ".prevent-split"
//     },
//     scale: 0.4,
//     landscape: true
//     // height: 500
//   }).then(function(group) {
//     kendo.drawing.pdf.saveAs(group, name)
//   });

function ExpOne(name){
  var element = document.getElementById('myCanvas');
  var opt = {
    margin:       1,
    filename:     name,
    image:        { type: 'jpeg', quality: 0.98 },
    html2canvas:  { scale: 2 },
    jsPDF:        { unit: 'cm', format: 'a3', orientation: 'portrait' }
  };
  
  // New Promise-based usage:
  html2pdf().set(opt).from(element).save();
  
  // // Old monolithic-style usage:
  // html2pdf(element, opt);
}


function ExpTwo(name){
  var element = document.getElementById('myCanvasDouble');
var opt = {
  margin:       1,
  filename:     name,
  image:        { type: 'jpeg', quality: 0.98 },
  html2canvas:  { scale: 2 },
  jsPDF:        { unit: 'cm', format: 'a2', orientation: 'landscape' }
};

// New Promise-based usage:
html2pdf().set(opt).from(element).save();

}
