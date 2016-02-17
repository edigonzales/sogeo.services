<#include "header.ftl">

	<#include "menu.ftl">



<h1>${content.rootpath}</h1>
  <#assign i=0>
	<#list posts as post>
  		<#if (post.status == "published")>
			  <#assign i = i + 1>
				<#if i == 5>
					<#break>
				</#if>
  			<h1><a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></h1>
  			<p class="date">${post.date?string("dd MMMM yyyy")}</p>
  			<p>${post.body}</p>
  		</#if>

			<hr />

  	</#list>

	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
