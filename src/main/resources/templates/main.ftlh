<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div>
        <@l.logout/>
    </div>
    <div>
        <form method="post" action="">
            <input type="text" name="text" placeholder="Введите сообщение">
            <input type="text" name="tag" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Добавить</button>
        </form>
    </div>
    <form method="post" action="filter">
        <input type="text" name="filter" placeholder="Тэг">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Найти</button>
    </form>
    <div>Список сообщений</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        <div>
            No messages
        </div>
    </#list>
</@c.page>