<div class="table-responsive">
    <table class="table table-hover table-condensed" style="min-width: 3500px;">
        <tr>
            <th scope="col">操作</th>
            <th style="background-color: yellow" scope="col">序号</th>
            <th style="background-color: yellow" scope="col">文件编码</th>
            <th style="background-color: yellow" scope="col">内部文件编号</th>
            <th style="background-color: yellow" scope="col">图册号</th>
            <th style="background-color: yellow" scope="col">专业</th>
            <th style="background-color: yellow" scope="col">版本</th>
            <th style="background-color: yellow" scope="col">状态</th>
            <th style="background-color: yellow" scope="col">图纸类型</th>
            <th style="background-color: yellow" scope="col">接收日期</th>
            <th style="background-color: yellow" scope="col">是否需FU</th>
            <th style="background-color: yellow" scope="col">FU计划时间</th>
            <th style="background-color: yellow" scope="col">FU单号</th>
            <th style="background-color: greenyellow" scope="col">计划细化完成时间（无需细化填/）</th>
            <th style="background-color: greenyellow" scope="col">细化责任人</th>
            <th style="background-color: red" scope="col">问题描述</th>
            <th style="background-color: red" scope="col">图纸问题数量</th>
            <th style="background-color: red" scope="col">处理方式</th>
            <th style="background-color: red" scope="col">处理单号</th>
            <th style="background-color: red" scope="col">核实郑分会审单问题是否修改</th>
            <th style="background-color: red" scope="col">备注</th>
            <th style="background-color: greenyellow" scope="col">完成时间</th>
            <th style="background-color: greenyellow" scope="col">设计点值</th>
            <th style="background-color: greenyellow" scope="col">审核点值</th>
            <th scope="col">操作</th>
        </tr>
        <#list detailDraws as detailDraw>
            <tr>
                <td><a href="deletedetaildraw?bookId=${detailDraw.bookId}"
                       onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                       class="label shanchu"><span
                                class="glyphicon glyphicon-remove"></span> 删除</a></td>
                <td><span>${detailDraw_index +1}</span></td>
                <td><span>${detailDraw.documentCodes!''}</span></td>
                <td><span>${detailDraw.internalDocumentCodes!''}</span></td>
                <td><span>${detailDraw.catalogNumber!''}</span></td>
                <td><span>${detailDraw.professionalType!''}</span></td>
                <td><span>${detailDraw.version!''}</span></td>
                <td><span>${detailDraw.state!''}</span></td>
                <td><span>${detailDraw.drawingType!''}</span></td>
                <td><span>${detailDraw.receivingTime!''}</span></td>
                <td><span>${detailDraw.doNeedFU!''}</span></td>
                <td><span>${detailDraw.planTimeFU!''}</span></td>
                <td><span>${detailDraw.numberFU!''}</span></td>
                <td><span>${detailDraw.planCompletionTime!''}</span></td>
                <td><span>${detailDraw.responsiblePerson!''}</span></td>
                <td><span>${detailDraw.problemDescription!''}</span></td>
                <td><span>${detailDraw.problemCount!''}</span></td>
                <td><span>${detailDraw.handleMethod!''}</span></td>
                <td><span>${detailDraw.processOrderNumber!''}</span></td>
                <td><span>${detailDraw.modify!''}</span></td>
                <td><span>${detailDraw.remarks!''}</span></td>
                <td><span>${detailDraw.completionTime!''}</span></td>
                <td><span>${detailDraw.designPointValue!''}</span></td>
                <td><span>${detailDraw.auditPointValue!''}</span></td>
                <td><a href="deletedetaildraw?bookId=${detailDraw.bookId}"
                       onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                       class="label shanchu"><span
                                class="glyphicon glyphicon-remove"></span> 删除</a></td>

            </tr>
        </#list>
    </table>
</div>