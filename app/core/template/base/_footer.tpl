
<div class="row">
  <div class="large-4 columns">

    <div class="brand">Scaffold</div>

    <div>
      Scaffold overview content
    </div>

  </div>
  <div class="large-2 columns">

    <div class="subtitle">Company</div>
    <ul class="list">
      <li class="menu"><a href="/about/">About Us</a></li>
      <li class="menu"><a href="/contact/">Contact Us</a></li>
    </ul>

  </div>
  <div class="large-2 columns">

    <div class="subtitle">Services</div>
    <ul class="list">
      <li class="menu"><a href="/">All Services</a></li>
    </ul>

  </div>
  <div class="large-2 columns">

    <div class="subtitle">Articles</div>
    <ul class="list">
      <li class="menu"><a href="/article/">All Articles</a></li>
    </ul>

  </div>
  <div class="large-2 columns">

    <div class="subtitle">Join Our Newsletter</div>

  </div>
</div>

<div class="row">
  <div class="large-8 columns">

    <div class="copyright">{if !empty($footer.brand)}{$footer.brand}{/if} Copyright &copy; {$smarty.now|date_format:"%Y"} {if !empty($footer)}{if !empty($footer.corp)}<a href="{$footer.corp_url}" target="_blank">{$footer.corp}{/if}</a>{/if}</div>

    <ul class="inline-list">
      <li class="menu"><a href="/legal/">Legal</a></li>
      <li class="menu"><a href="/legal/privacy/">Privacy Policy</a></li>
      <li class="menu"><a href="/legal/terms/">Terms of Use</a></li>
    </ul>

  </div>
  <div class="large-4 columns">

    <ul class="inline-list" style="float:right;">
      {include file='core/template/base/_menu_social.tpl'}
    </ul>

  </div>
</div>
