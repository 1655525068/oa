<div class="table-responsive">
    <table class="table table-hover">
        <tr>
            <th scope="col">序号</th>
            <th scope="col">图纸类型</th>
            <th scope="col">操作</th>
        </tr>
        <#list drawTypeList as drawType>
            <tr>
                <td><span>${(drawType_index+1)!''}</span></td>
                <td><span>${(drawType.dtName)!''}</span></td>
                <td><a href="drawtypeedit?dtId=${drawType.dtId}"
                       class="label xiugai"><span class="glyphicon glyphicon-edit"></span>
                        修改</a>
                    <a
                            onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                            href="deletedrawtype?dtId=${drawType.dtId}" class="label shanchu"><span
                                class="glyphicon glyphicon-remove"></span> 删除</a></td>
            </tr>
        </#list>
    </table>
</div>
