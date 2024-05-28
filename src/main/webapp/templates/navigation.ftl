<nav class="navbar navbar-expand-lg navbar-light bg-light">
     <div aria-level="1" class="site-title" role="heading">
			<#if show_site_name>
			<a role="menuitem" class="${logo_css_class} navbar-brand web-brand" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<span title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
			</a>
				</#if>
			</div>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto navbarLink">
      <#list nav_items as nav_item>
      
      <#assign
				nav_item_attr_has_popup = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>
      
      <#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_css_class = "selected"
				/>
			</#if>
      
			<li class="nav-item" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a class="nav-link ${nav_item_css_class}" href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"> ${nav_item.getName()}</a>
			</li>
		</#list>
    </ul>

  </div>
  <div class="d-none d-lg-block">
        <a href="#" class="webButton">Get Started Today</a>
      </div>
</nav>
