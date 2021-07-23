/**
* @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
* For licensing, see LICENSE.md or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';

//    config.font_names = '宋体/宋体;黑体/黑体;仿宋/仿宋_GB2312;楷体/楷体_GB2312;隶书/隶书;幼圆/幼圆;微软雅黑/微软雅黑;' + config.font_names;
   
//    config.toolbar_Full =
//[
////    ['Source', '-', 'NewPage', 'Preview', '-', 'Templates'],
//      ['Cut', 'Copy', 'Paste'], // ,'PasteText', 'PasteFromWord', '-', 'Print', 'SpellChecker', 'Scayt'
//  //  ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
// //   ['BidiLtr', 'BidiRtl'],

//    ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
//  //  ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote', 'CreateDiv'],
//  //  ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
//    //    ['Link', 'Unlink', 'Anchor'],
//    ['Image'], //'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'

//    ['Styles', 'Format', 'Font', 'FontSize'],
//    ['TextColor', 'BGColor'],
//   // ['Maximize', 'ShowBlocks', '-']
//];

config.toolbar_Basic =
[
      ['Source'], ['TextColor', 'BGColor'], ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'], ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', '-']
];
 
    config.enterMode = CKEDITOR.ENTER_BR;
    config.shiftEnterMode = CKEDITOR.ENTER_P;
    config.font_names = '宋体/宋体;黑体/黑体;仿宋/仿宋_GB2312;楷体/楷体_GB2312;隶书/隶书;幼圆/幼圆;微软雅黑/微软雅黑;' + config.font_names;


    // 在 CKEditor 中集成 CKFinder，注意 ckfinder的路径选择要正确。  
    config.filebrowserBrowseUrl = '/control/editor/ckfinder/ckfinder.html',
          config.filebrowserImageBrowseUrl = '/control/editor/ckfinder/ckfinder.html?type=Images',
          config.filebrowserFlashBrowseUrl = '/control/editor/ckfinder/ckfinder.html?type=Flash',
          config.filebrowserUploadUrl = '/control/editor/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
          config.filebrowserImageUploadUrl = '/control/editor/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
          config.filebrowserFlashUploadUrl = '/control/editor/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash',
          config.filebrowserWindowWidth = '1000',
          config.filebrowserWindowHeight = '700' 


};
