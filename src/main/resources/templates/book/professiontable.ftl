<div class="table-responsive">
    <table class="table table-hover">
        <tr>
            <th scope="col">序号</th>
            <th scope="col">专业</th>
            <th scope="col">操作</th>
        </tr>
        <#list professionList as profession>
            <tr>
                <td><span>${(profession_index+1)!''}</span></td>
                <td><span>${(profession.proName)!''}</span></td>
                <td><a href="professionedit?proId=${profession.proId}"
                       class="label xiugai"><span class="glyphicon glyphicon-edit"></span>
                        修改</a>
                    <a
                            onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                            href="deleteprofession?proId=${profession.proId}" class="label shanchu"><span
                                class="glyphicon glyphicon-remove"></span> 删除</a></td>
            </tr>
        </#list>
    </table>
</div>
