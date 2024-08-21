<div class="table-responsive">
    <table class="table table-hover table-condensed" style="min-width: 3500px;">
        <tr>
            <th scope="col">操作</th>
            <th style="background-color: yellow" scope="col">序号</th>
            <th style="background-color: yellow" scope="col">类型</th>
            <th style="background-color: yellow" scope="col">三单号</th>
            <th style="background-color: yellow" scope="col">中文名称</th>
            <th style="background-color: yellow" scope="col">FCR版本</th>
            <th style="background-color: yellow" scope="col">状态</th>
            <th style="background-color: yellow" scope="col">编制人</th>
            <th style="background-color: yellow" scope="col">最新版</th>
            <th style="background-color: yellow" scope="col">接收时间</th>
            <th style="background-color: yellow" scope="col">分发时间</th>
            <th style="background-color: yellow" scope="col">作废标识</th>
            <th style="background-color: yellow" scope="col">相关文件编码</th>
            <th style="background-color: yellow" scope="col">相关文件内部编码</th>
            <th style="background-color: yellow" scope="col">图纸版本</th>
            <th style="background-color: yellow" scope="col">专业</th>
            <th style="background-color: yellow" scope="col">责任方</th>
            <th style="background-color: greenyellow" scope="col">识别责任人</th>
            <th style="background-color: greenyellow" scope="col">处理人</th>
            <th style="background-color: red" scope="col">是否需要处理</th>
            <th style="background-color: red" scope="col">处理方式</th>
            <th style="background-color: red" scope="col">处理单号</th>
            <th style="background-color: red" scope="col">处理完成时间</th>
            <th style="background-color: red" scope="col">责任方</th>
            <th style="background-color: red" scope="col">备注</th>
            <th style="background-color: red" scope="col">是否涉及索赔</th>
            <th style="background-color: yellow" scope="col">计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN</th>
            <th style="background-color: yellow" scope="col">实际关闭时间</th>
            <th style="background-color: greenyellow" scope="col">设计点值</th>
            <th style="background-color: greenyellow" scope="col">审核点值</th>
            <th scope="col">操作</th>
        </tr>
        <#list threeBooks as threeBook>
            <tr>
                <td><a href="deletethreebook?bookId=${threeBook.bookId}"
                       onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                       class="label shanchu"><span
                                class="glyphicon glyphicon-remove"></span> 删除</a></td>
                <td><span>${threeBook_index +1}</span></td>
                <td><span>${threeBook.type!''}</span></td>
                <td><span>${threeBook.threeBookNumbers!''}</span></td>
                <td><span>${threeBook.chineseName!''}</span></td>
                <td><span>${threeBook.fcrVersion!''}</span></td>
                <td><span>${threeBook.state!''}</span></td>
                <td><span>${threeBook.preparedBy!''}</span></td>
                <td><span>${threeBook.latestVersion!''}</span></td>
                <td><span>${threeBook.receivingTime!''}</span></td>
                <td><span>${threeBook.distributionTime!''}</span></td>
                <td><span>${threeBook.invalidIdentification!''}</span></td>
                <td><span>${threeBook.relatedDocumentCodes!''}</span></td>
                <td><span>${threeBook.internalCodes!''}</span></td>
                <td><span>${threeBook.drawVersion!''}</span></td>
                <td><span>${threeBook.professionalType!''}</span></td>
                <td><span>${threeBook.responsibleParty!''}</span></td>
                <td><span>${threeBook.identifyResponsiblePerson!''}</span></td>
                <td><span>${threeBook.processPerson!''}</span></td>
                <td><span>${threeBook.shouldHandle!''}</span></td>
                <td><span>${threeBook.handleMethod!''}</span></td>
                <td><span>${threeBook.processOrderNumber!''}</span></td>
                <td><span>${threeBook.processCompletionTime!''}</span></td>
                <td><span>${threeBook.processResponsibleParty!''}</span></td>
                <td><span>${threeBook.remarks!''}</span></td>
                <td><span>${threeBook.shouldClaim!''}</span></td>
                <td><span>${threeBook.planToCloseTime!''}</span></td>
                <td><span>${threeBook.actualCloseTime!''}</span></td>
                <td><span>${threeBook.designPointValue!''}</span></td>
                <td><span>${threeBook.auditPointValue!''}</span></td>
                <td><a href="deletethreebook?bookId=${threeBook.bookId}"
                       onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                       class="label shanchu"><span
                                class="glyphicon glyphicon-remove"></span> 删除</a></td>

            </tr>
        </#list>
    </table>
</div>