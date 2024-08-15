<div class="bgc-w box box-primary">
    <!--盒子头-->
    <div class="box-header">
        <h3 class="box-title">
            <a href="threebookexport" class="label label-success" style="padding: 5px;">
                <span class="glyphicon glyphicon-export"></span> 导出
            </a>

            <a href="threebookmanage" class="label label-success" style="padding: 5px;margin-left:5px;">
                <span class="glyphicon glyphicon-refresh"></span> 刷新
            </a>

        </h3>
        <div class="box-tools">
            <div class="input-group" style="width: 150px;">
                <input type="text" class="form-control input-sm search"
                       placeholder="查找..."/>
                <div class="input-group-btn">
                    <a class="btn btn-sm btn-default"><span
                                class="glyphicon glyphicon-search searchgo"></span></a>
                </div>
            </div>
        </div>
    </div>
    <!--盒子身体-->
    <div class="box-body no-padding">
        <div class="table-responsive">
            <table class="table table-hover table-striped">
                <tr>
                    <th scope="col">三单</th>
                    <th scope="col">姓名</th>
                    <th scope="col">员工号</th>
                    <th scope="col">员工号</th>
                    <th scope="col">员工号</th>
                    <th scope="col">员工号</th>
                    <th scope="col">员工号</th>
                    <th scope="col">员工号</th>
<#--                    <th scope="col">职位</th>-->
<#--                    <th scope="col">角色</th>-->
<#--                    <th scope="col">电话</th>-->
                    <th scope="col">操作</th>
                </tr>
                <#list threeBooks as threeBook>
                    <tr>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
                        <td><span>${(threeBook.chineseName)!''}</span></td>
<#--                        <td><span>${(user.uid)!''}</span></td>-->
<#--                        <td><span>${(user.position.name)!''}</span></td>-->
<#--                        <td><span>${(user.role.roleName)!''}</span></td>-->
<#--                        <td><span>${(user.userTel)!''}</span></td>-->
<#--                        <td><a href="useredit?userid=${user.userId}" class="label xiugai"><span-->
<#--                                        class="glyphicon glyphicon-edit"></span> 修改</a> <a-->
<#--                                    onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"-->
<#--                                    href="deleteuser?userid=${user.userId}" class="label shanchu"><span-->
<#--                                        class="glyphicon glyphicon-remove"></span> 删除</a></td>-->
                    </tr>

                </#list>

            </table>
        </div>
    </div>
    <!--盒子尾-->
    <#include "/common/paging.ftl"/>
</div>
