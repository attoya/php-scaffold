





$(document).ready(function() {

  hotkey_map = [
    'ctrl+alt+d'
  ]

  // Map keys to hotkeys plugin
  hotkeys(hotkey_map.join(','), function(event, handler) {

    event.preventDefault();

    switch(handler.key) {

      // Drive Uploader Show
      case 'ctrl+alt+d':
        DriveUploader.triggerClickable();
        break;

    }

  });

});





