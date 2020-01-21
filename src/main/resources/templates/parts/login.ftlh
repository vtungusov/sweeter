<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="form-group">
            <label class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-6">
                <input class="form-control" type="text" name="username" required placeholder="user name"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Password : </label>
            <div class="col-sm-6">
                <input class="form-control" type="password" name="password" required placeholder="password"/>
            </div>
        </div>
        <#if isRegisterForm>
        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Email : </label>
            <div class="col-sm-6">
                <input class="form-control" type="email" name="email" required placeholder="your@email.some"/>
            </div>
        </div>
        </#if>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary mb-2" type="submit"><#if isRegisterForm>Register<#else >Sign In </#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary mb-2" type="submit">Sign Out</button>
    </form>
</#macro>