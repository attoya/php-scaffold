<!DOCTYPE html>
<html class="no-js" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="robots" content="nocache" />
  <meta name="robots" content="noarchive" />
  <title>{if !empty($title.site)}{$title.site}{else}{$smarty.const.BRAND_NAME}{/if}{if !empty($title.page)} - {$title.page}{/if}</title>

  {* Base Scripts *}
  {include file='core/template/base/_script_initial.tpl'}
  {include file='core/template/base/_script_common.tpl'}
  {include file='core/template/base/_script_auth.tpl'}
  {* {include file='core/template/base/_script_components.tpl'} @future *}
  {include file='core/template/base/_script_icons.tpl'}
  {include file='core/template/base/_script_analytics.tpl'}

  {* Notify Service Worker *}
  {* include file='notify/template/_notify_service_worker_js.tpl' *}

</head>
<body>

  {if $smarty.const.ENVIRONMENT != 'prod'}
    <environment value="{$smarty.const.ENVIRONMENT}" class="no-select">
      {$smarty.const.ENVIRONMENT} ENVIRONMENT
    </environment>
  {/if}

  <preloader>
    <div>&nbsp;</div>
  </preloader>
  <loader>
    <div><i class="far fa-ajax-loader"></i></div>
  </loader>

  <menu>
    <div class="row">
      <div class="large-12 columns">
        <nav class="top-bar">

          <ul class="title-area">
            <li class="name logo">
              <span class="title"><a href="/">{$smarty.const.BRAND_NAME}</a></span>
            </li>
            <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
          </ul>

          <section class="top-bar-section">
            <ul class="right" id="menu">

              {if empty($menu)}
                {include file='core/template/base/_menu_head.tpl'}
              {else}
                {foreach $menu as $menu_key => $menu_item}
                  <li {if !empty($menu_item.nav)}data-magellan-arrival="{$menu_item.nav}"{/if}>
                    <a href="{$menu_item.href}">{$menu_item.name}</a>
                  </li>
                {/foreach}
              {/if}

            </ul>
          </section>

        </nav>
      </div>
    </div>
  </menu>



  <content>
    {$content}
  </content>



  <footer>
    {include file='core/template/base/_footer.tpl'}
  </footer>

  {* @notice Theme JS Should always be last *}
  <script src="/static/core/js/base/Theme.js{$smarty.const.CACHELESS}"></script>

  <context {include file='core/template/base/_context_attributes.tpl'}></context>

</body>
</html>