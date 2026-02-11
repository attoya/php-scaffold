{*
*
* @notice This is for common scripts for framework and interface components only
*
*}

{* Packages *}
{* <link type="text/css" rel="stylesheet" href="/static/vendor/jquery/jquery-ui-1.8.1.custom.css{$smarty.const.CACHELESS}"> *}
{* <link type="text/css" rel="stylesheet" href="/static/vendor/toastr/toastr.css{$smarty.const.CACHELESS}"> *}
<script type="text/javascript" src="/static/vendor/jquery/jquery-ui-1.12.1.min.js{$smarty.const.CACHELESS}"></script>
{* <script type="text/javascript" src="/static/vendor/hotkey.js{$smarty.const.CACHELESS}"></script> *}
<script type="text/javascript" src="/static/vendor/jquery/jquery.localscroll-1.2.7.js"></script>
{* <script type="text/javascript" src="/static/vendor/jquery/jquery.scrollTo-1.4.3.1.js"></script> *}


{* Framework Base *}
<script type="text/javascript" src="/static/vendor/attoya/js/attoya_logic.js{$smarty.const.CACHELESS}"></script>
{* <script type="text/javascript" src="/static/vendor/attoya/js/jquery.attoya.js{$smarty.const.CACHELESS}"></script> *}
<script type="text/javascript" src="/static/vendor/attoya/js/AttoyaConsole.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/AttoyaDom.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/AttoyaComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/AttoyaView.js{$smarty.const.CACHELESS}"></script>

{* Framework/Core Base @note Needs to be loaded before other Attoya Components/Views as these are local classes that allow modifications to Attoya JS functions *}
<script type="text/javascript" src="/static/core/js/base/BaseComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/base/BaseView.js{$smarty.const.CACHELESS}"></script>

{* Framework Component *}
{*
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaShowComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaListComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaListTreeComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaSheetComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaBoardComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaTimelineComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/component/AttoyaPlainComponent.js{$smarty.const.CACHELESS}"></script>
*}

{* Framework View *}
{*
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaShowView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaShowItemView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaListView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaSheetView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaIndexView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaBoardView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaTimelineView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/view/AttoyaPlainView.js{$smarty.const.CACHELESS}"></script>
*}

{* Framework Interface *}
{*
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/interface/AttoyaDialog.css{$smarty.const.CACHELESS}">
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/interface/AttoyaDrawer.css{$smarty.const.CACHELESS}">
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/interface/AttoyaInterface.css{$smarty.const.CACHELESS}">
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/interface/AttoyaMarkdown.css{$smarty.const.CACHELESS}">
<link type="text/css" rel="stylesheet" href="/static/vendor/attoya/css/interface/AttoyaTimeline.css{$smarty.const.CACHELESS}">
<script type="text/javascript" src="/static/vendor/attoya/js/interface/AttoyaDrawer.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/interface/AttoyaDialog.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/vendor/attoya/js/interface/AttoyaMarkdown.js{$smarty.const.CACHELESS}"></script>
*}

{* Core Base *}
{* <script type="text/javascript" src="/static/core/js/base/HotKeys.js{$smarty.const.CACHELESS}"></script> *}

{* Core Component *}
{*
<script type="text/javascript" src="/static/core/js/component/BoardComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/component/ListComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/component/ListTreeComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/component/PlainComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/component/SheetComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/component/ShowComponent.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/component/TimelineComponent.js{$smarty.const.CACHELESS}"></script>
*}

{* Core View *}
{*
<script type="text/javascript" src="/static/core/js/view/BoardView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/IndexView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/ListView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/PlainView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/SheetView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/ShowView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/ShowItemView.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/view/TimelineView.js{$smarty.const.CACHELESS}"></script>
*}

{* Core Interface *}
{*
<script type="text/javascript" src="/static/core/js/interface/Dialog.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/interface/Drawer.js{$smarty.const.CACHELESS}"></script>
<script type="text/javascript" src="/static/core/js/interface/Markdown.js{$smarty.const.CACHELESS}"></script>
*}

{* Core Session *}
{* <link type="text/css" rel="stylesheet" href="/static/css/Session.css{$smarty.const.CACHELESS}"> *}
{* <script type="text/javascript" src="/static/js/SessionTimeout.js{$smarty.const.CACHELESS}"></script> *}
{* <script type="text/javascript" src="/js/SessionPoll.js{$smarty.const.CACHELESS}"></script> *}
