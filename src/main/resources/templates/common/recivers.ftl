<div class="table-r">
    <table class="table  table-hover  container-fluid ">
        <thead>
        <tr class="row">
            <th class="col-xs-1">
                <span class="labels"><label><input id="checkedAll" type="checkbox"><i>✓</i></label></span>
            </th>
            <th class="col-xs-1">
                <span class="labels" style="display:block;"></span>
            </th>
            <th class="col-xs-2 b">姓名</th>
            <th class="col-xs-2 b">工号</th>
            <th class="col-xs-2 b">角色</th>
            <th class="col-xs-2 b">职位</th>
        </tr>
        </thead>
        <tbody>
        <#list emplist as emp>
            <tr class="row">
                <td class="col-xs-1">
                    <span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
                </td>
                <td class="col-xs-1">
                    <span class="imgs center-block">
                        <#if emp.imgPath?? && emp.imgPath!=''  >
                            <img style="width: 30px;height: 30px;"
                                 class="profile-user-img img-responsive img-circle"
                                 src="/image/${emp.imgPath}"/>
                        <#else>
                            <img style="width: 30px;height: 30px;"
                                 class="profile-user-img img-responsive img-circle"
                                 src="images/timg.jpg" alt="images"/>

                        </#if>
                    </span>
                </td>
                <td class="col-xs-2 na">${emp.userName}</td>
                <td class="col-xs-2">${emp.uid}</td>
                <td class="col-xs-2">${emp.role.roleName}</td>
                <td class="col-xs-2">${emp.position.name}</td>

            </tr>
        </#list>
        </tbody>
    </table>
</div>

<#include "/common/paging.ftl">
<script type="text/javascript" src="js/mail/mail.js"></script>

								