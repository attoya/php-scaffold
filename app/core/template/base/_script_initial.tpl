{*
*
* @important These need to be at the first to load and separated from other scripts for the loader to work.
*
*}

<script>

  // Vanilla JS page ready display for header console.
  document.addEventListener('DOMContentLoaded', function() {

  AttoyaConsole.init();

  try {

    // Assign from html context tag
    context = document.getElementsByTagName('context')[0];

    AttoyaConsole.debug('Attoya', {
      'Release'       : context.getAttribute('deploy_release'),
      'Deployed At'   : context.getAttribute('deploy_datetime'),
      'Build'         : context.getAttribute('deploy_build'),
      'Server'        : context.getAttribute('server_current'),
      'Environment'   : context.getAttribute('environment'),
      'View Lock'     : context.getAttribute('view_lock'),
      'User ID'       : context.getAttribute('user_id'),
      'Console'       : AttoyaConsole._options,
      'Libraries'     : {
        'Zurb Foundation' : version_foundation,
        'jQuery'          : version_jquery,
        'jQuery UI'       : version_jquery_ui,
      },
    });

  }
  catch(error) {
    // Pass
  }

});


</script>

{* @notice Loader CSS Should always be first *}
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/base/AttoyaLoader.css{$smarty.const.CACHELESS}" />

{* Framework *}
<link rel="stylesheet" href="/static/vendor/foundation/foundation4.css{$smarty.const.CACHELESS}" />
<link rel="stylesheet" href="/static/vendor/normalize.css{$smarty.const.CACHELESS}" />
<script src="/static/vendor/modernizr.js{$smarty.const.CACHELESS}"></script>
<script src="/static/vendor/jquery/jquery-2.2.2.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/foundation/foundation4.min.js{$smarty.const.CACHELESS}"></script>

{* Font *}
<link rel="stylesheet" href="/static/vendor/entypo/entypo.css{$smarty.const.CACHELESS}" />
{* <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700{$smarty.const.CACHELESS}" type="text/css"> *}
{* <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin+Condensed:600{$smarty.const.CACHELESS}" type="text/css"> *}

{* Theme *}
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/base/AttoyaTheme.css{$smarty.const.CACHELESS}">
<link type="text/css" rel="stylesheet" href="/static/core/css/Theme.css{$smarty.const.CACHELESS}" />
