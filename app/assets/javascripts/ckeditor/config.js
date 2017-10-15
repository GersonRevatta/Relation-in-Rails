
CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  //Plugin autogrow
  config.extraPlugins = 'autogrow';
  config.autoGrow_minHeight = 200;
  config.autoGrow_maxHeight = 400;
  config.autoGrow_bottomSpace = 50;

  //Plugin moonocolor
  config.skin = 'moonocolor';

  //Configurando  Herramientas
  config.toolbar_mini = [
    [ "Styles","Format","Bold",  "Italic",  "Underline",  "Strike", "-", "Image","-","NumberedList","BulletedList"],
  ];
  config.toolbar = "mini";

  // ... rest of the original config.js  ...
}