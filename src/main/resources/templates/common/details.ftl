<div class="table-r">
    <table class="table  table-hover  container-fluid ">
        <thead>
        <tr class="row">
            <th class="col-xs-1">
                <#--<span class="labels"><label><input id="checkedAll" type="checkbox"><i>✓</i></label></span>-->
            </th>
            <th class="col-xs-2 b">文件编码</th>
            <th class="col-xs-2 b">内部文件编号</th>
            <th class="col-xs-2 b">图册号</th>
            <th class="col-xs-2 b">专业</th>
        </tr>
        </thead>
        <tbody>
        <#list details as detail>
            <tr class="row">
                <td class="col-xs-1">
                    <span class="labels"><label><input name="id_detail" type="checkbox"><i>✓</i></label></span>
                </td>

                <td class="col-xs-2 nna">${detail.documentCodes}</td>
                <td class="col-xs-2 nnb">${detail.internalDocumentCodes}</td>
                <td class="col-xs-2">${detail.catalogNumber}</td>
                <td class="col-xs-2">${detail.professionalType}</td>

            </tr>
        </#list>
        </tbody>
    </table>
</div>

<#include "/common/paging2.ftl">

								