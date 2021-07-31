// function selectButton(parentIdName, childIdName, thisButton){
//   console.log(parentIdName);
//   console.log(childIdName);
//   console.log(thisButton);
//
//
//   var otherParents = $(`#${parentIdName}`).children('button').not(thisButton);
//
//   otherParents.css('color', 'black');
//
//   $(this).css('color', 'blue');
//
//   var thisIdName = $(thisButton).attr('id');
//
//   var otherChildren = $(`#${childIdName}`.children('div').not(`.${thisIdName}`);
//
//   otherChildren.addClass('hidden');
//
//   $(`.${thisIdName}`).toggleClass('hidden');
// }
//
// $('button').on('click',function(){
//   var branchA = $(this).parent().attr('id');
//   var branchB = $(this).parent().attr('class');
//
//   if (branchA === 'parent') {
//     selectButton('parent', 'child', this);
//   } else if (branchB === 'child') {
//     selectButton('child','grandchild', this);
//   } else {
//     console.log('ボタンを選んでください');
//   }
// });

// $('button').on('click', function() {
//   var otherParents = $('#parent').children('button').not(this);
//
//   otherParents.css('color', 'black');
//
//   $(this).css('color', 'blue');
//
//   var thisIdName = $(this).attr('id');
//
//   var otherChildren = $('#children').children('div').not(`.${thisIdName}`);
//
//   otherChildren.addClass('hidden');
//
//   $(`.${thisIdName}`).toggleClass('hidden');
// });


$('#parent').on('click', 'button', function() {
  var otherParents = $('#parent').children('button').not(this);

  otherParents.css('color', 'black');

  $(this).css('color', 'blue');

  var thisIdName = $(this).attr('id');

  var otherChildren = $('#children').children('div').not(`.${thisIdName}`);

  otherChildren.addClass('hidden');

  $(`.${thisIdName}`).toggleClass('hidden');
});

$('#children').on('click', 'button', function() {
  var otherParents = $('.child').children('button').not(this);

  otherParents.css('color', 'black');

  $(this).css('color', 'blue');

  var thisIdName = $(this).attr('id');

  var otherChildren = $('#grandchildren').children('div').not(`.${thisIdName}`);

  otherChildren.addClass('hidden');

  $(`.${thisIdName}`).toggleClass('hidden');
});

$('#grandchildren').on('click', 'button', function() {
  var otherParents = $('.grandchild').children('button').not(this);

  otherParents.css('color', 'black');

  $(this).css('color', 'blue');

  var dsId = $(this).attr('name')

  var dsName = $(this).text()

  $('.h4').text(`${dsName}`)

  $("input[name='post[divesite_id]']").val(`${dsId}`)
});
