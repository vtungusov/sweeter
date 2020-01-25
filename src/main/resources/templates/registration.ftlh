<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="mb-4"><h5>Add new user</h5></div>
    <@l.login "/registration" true/>
</@c.page>
