<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/task/seetask.css"/>
<link rel="stylesheet" type="text/css" href="css/common/tanchuang.css"/>
<style type="text/css">
    a {
        color: #fff;
    }

    a:hover {
        text-decoration: none;
        color: #fff;
    }

    .inside thead {
        background-color: rgba(76, 175, 95, 0.06);
    }

    .reciver {
        position: relative;
        float: right;
        margin-top: -28px;
        right: 5px;
        cursor: pointer;
    }
</style>
<script>
    $(function () {
        $(".ddlstatus").each(function () {
            var options = $(".ddlstatus option:selected");

            // if (options.val() === "6" || options.val() === "7") {
            //     $("#save").prop("disabled", true);
            //
            // } else {
            //     $("#save").removeAttr("disabled");
            // }
        });


    })
</script>

<body>
<div class="outside">
    <div class="row head">
        <div class="col-md-2">
            <h1 style="font-size:24px;margin: 0;" class="">任务查看</h1>
        </div>
        <div class="col-md-10 text-right right-me">
            <a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
            >
            <a disabled="disabled">任务查看</a>
        </div>
    </div>
    <div class="containers">

        <button type="button" class="bs btn btn-xs btn-default out">
            <a href="javascript:history.back();">
                <span class="glyphicon glyphicon-chevron-left back">返回</span></a>
        </button>


        <div class="page-header"></div>
        <form action="uplogger">
            <div class="row">
                <div class="box-body" style="margin-left:20px;margin-right: 20px;">
                    <div class=" mailbox-read-info">
                        <h3>
                            <span id="ctl00_cphMain_lblTitle">主题：${task.title}</span>
                            <#if task.typeId == 1>
                                <span id="">&nbsp;&nbsp;三单号：${task.threeBook.threeBookNumbers!''}</span>
                                <span id="">&nbsp;&nbsp;中文名称：${task.threeBook.chineseName!''}</span>
                                <span id="">&nbsp;&nbsp;类型：${task.threeBook.type!''}</span>
                            <#else >
                                <span id="">&nbsp;&nbsp;文件编码：${task.detailDraw.documentCodes!''}</span>
                                <span id="">&nbsp;&nbsp;内部文件编号：${task.detailDraw.internalDocumentCodes!''}</span>
                                <span id="">&nbsp;&nbsp;图册号：${task.detailDraw.catalogNumber!''}</span>
                            </#if>
                            <span id="ctl00_cphMain_lblDate"
                                  class="mailbox-read-time pull-right">状态：<i class="label ${status.statusColor}">
                                    ${(status.statusName)!''}
                                </i></span>
                        </h3>
                        <h3>
                            <#if task.typeId == 1>
                                <span id="">相关文件编码：${task.threeBook.relatedDocumentCodes!''}</span>
                                <span id="">&nbsp;&nbsp;内部文件编码：${task.threeBook.internalCodes!''}</span>
                            </#if>
                        </h3>
                        <#if task.reciverlist??>
                            <h5 class="fonts"><span id="ctl00_cphMain_lblFrom"
                                                    class="mailbox-read-time">发布人：<i>${user.userName!''}</i> &nbsp;&nbsp;责任人：<i>${task.reciverlist}</i> &nbsp;&nbsp;处理人：<i>
                                        <#if task.typeId = 1>
                                            ${task.threeBook.processPerson!''}
                                        <#else >
                                            ${task.detailDraw.processPerson!''}
                                        </#if>


                                    </i>
                                &nbsp;&nbsp;审核人：<i>
                                        <#if task.typeId = 1>
                                            ${task.threeBook.auditPerson!''}
                                        <#else >
                                            ${task.detailDraw.auditPerson!''}
                                        </#if>


                                    </i>
                                <span id="ctl00_cphMain_lblDate"
                                      class="mailbox-read-time pull-right">${task.publishTime}</span>
                            </span>
                            </h5>
                        </#if>
                    </div>
                    <div class="mailbox-read-message">
                        <h5 class="fonts">
                            <#if task.typeId == 1>
                                <#if task.threeBook.loggerTicking?? && task.threeBook.loggerTicking !='' >
                                    <span style="background-color: grey"> <i
                                                style="color: orange">反馈：${task.threeBook.loggerTicking!''}</i></span>
                                </#if>
                            <#else >
                                <#if task.detailDraw.loggerTicking?? && task.detailDraw.loggerTicking !='' >
                                    <span style="background-color: grey"> <i
                                                style="color: orange">反馈：${task.detailDraw.loggerTicking!''}</i></span>
                                </#if>
                            </#if>

                        </h5>
                        <span id="ctl00_cphMain_lblFeedback">
									<h5 style="margin-top: 20px;">
										任务进度（${task.starTime}至 ${task.endTime}）
										<small class="pull-right">${status.statusPrecent}</small>
									</h5>
									<div class="progress xs" style="margin: 10px 0;">
										<div class="progress-bar progress-bar-aqua"
                                             style="width: ${status.statusPrecent}" role="progressbar"
                                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
											</div>
									</div>
                                    <div style="height: 55px;overflow: auto">
									<#list loggerlist as logger>
                                        <#if logger.loggerStatusid??>
                                            <#list statuslist as statu>

                                                <#if logger.loggerStatusid==statu.statusId>
                                                    <div>
												${logger.username}
													<span style="font-size:8pt; color:#999; margin-left:3px;">${logger.createTime}</span>：将状态【${statu.statusName}】
                                                        <span>处理人【${logger.loggerProcessPerson!''}】</span>
                                                        <#if task.typeId == 1 >
                                                            <#if task.threeBook.type == "CR">
                                                                <span>计划关闭时间【${logger.loggerPlanToCloseTime!''}】</span>
                                                                <span>实际关闭时间【${logger.loggerActualCloseTime!''}】</span>
                                                            <#else >
                                                                <span>是否需要处理【${logger.loggerShouldHandle!''}】</span>
                                                                <span>处理方式【${logger.loggerHandleMethod!''}】</span>
                                                                <span>处理单号【${logger.loggerProcessOrderNumber!''}】</span>
                                                                <span>处理完成时间【${logger.loggerProcessCompletionTime!''}】</span>
                                                                <span>责任方【${logger.loggerProcessResponsibleParty!''}】</span>
                                                                <span>备注【${logger.loggerRemarks!''}】</span>
                                                                <span>是否涉及索赔【${logger.loggerShouldClaim!''}】</span>
                                                            </#if>
                                                        <#else >
                                                            <span>处理方式【${logger.loggerHandleMethod!''}】</span>
                                                            <span>处理单号【${logger.loggerProcessOrderNumber!''}】</span>
                                                            <span>备注【${logger.loggerRemarks!''}】</span>
                                                            <span>完成时间【${logger.loggerCompletionTime!''}】</span>
                                                            <span>问题是否修改【${logger.loggerModify!''}】</span>
                                                        </#if>
                                                        <span>设计点值【${logger.loggerDesignPointValue!''}】</span>
                                                            <span>审核点值【${logger.loggerAuditPointValue!''}】</span>
											</div>
                                                </#if>

                                            </#list>
                                        </#if>
										<#if logger.loggerTicking!=''>
                                        <div>
												${logger.username}
													<span style="font-size:8pt; color:#999; margin-left:3px;">${logger.createTime}</span>
													：${logger.loggerTicking}
											</div>
                                    </#if>
                                    </#list>
                                    </div>
								</span>
                        <span id="ctl00_cphMain_lblNote"></span>
                    </div>
                    <div class="page-header page"></div>
                    <select name="loggerStatusid" id="ctl00_cphMain_ddlStatus"
                            class="form-control select2 ddlstatus" style="display: none">
                        <option value="${status.statusId}">${status.statusName}</option>
                    </select>
                    <#if task.typeId ==1 >
                        <div class="col-md-4 form-group">
                            <label>
                                <span id="ctl00_cphMain_Label1">专业</span>
                            </label>
                            <select name="professionalType" id="ctl00_cphMain_ddlStatus"
                                    class="form-control select2 ddlstatus">
                                <option value="${task.threeBook.professionalType}">${task.threeBook.professionalType}</option>
                                <#list professions as profession>
                                    <#if task.threeBook.professionalType = profession.proName>
                                    <#else >
                                        <option value="${profession.proName}">${profession.proName}</option>
                                    </#if>
                                </#list>
                            </select>
                        </div>
                        <div class="col-md-4 form-group">
                            <label data-toggle="modal"> <span id="ctl00_cphMain_Label2">处理人</span>
                            </label><input id="processPerson" name="processPerson" type="text" required="required"
                                           class="form-control"
                                           value="${task.threeBook.processPerson!''}"/>
                            <div class="reciver" id="reciver"
                                    <#if user2.realName == task.threeBook.processPerson!''>
                                        disabled="disabled"
                                    </#if>
                            >
                                <#if task.threeBook.shouldHandle ?? &&  task.threeBook.processPerson ??>
                                    <#if task.threeBook.shouldHandle !='否' && user2.realName != task.threeBook.processPerson!''>
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                        >通讯录</span>

                                    </#if>

                                </#if>

                            </div>
                        </div>
                    <#--                        <div class="col-md-4 form-group">-->
                    <#--                            <label> <span id="ctl00_cphMain_Label2">是否需要处理</span> </label>-->
                    <#--                            <select id="shouldHandle" name="shouldHandle" class="form-control"-->
                    <#--                                    <#if task.threeBook.shouldHandle ?? &&  task.threeBook.processPerson ??>-->
                    <#--                                        <#if task.threeBook.shouldHandle !='是'>-->
                    <#--                                            readonly="readonly"-->
                    <#--                                        </#if>-->

                    <#--                                    </#if>-->
                    <#--                            >-->
                    <#--                                <#if task.threeBook.shouldHandle ??>-->
                    <#--                                    <option value="${task.threeBook.shouldHandle}">${task.threeBook.shouldHandle}</option>-->
                    <#--                                </#if>-->
                    <#--                                <#if (!(task.threeBook.shouldHandle ?? &&  task.threeBook.processPerson ??))>-->
                    <#--                                    <option value="是">是</option>-->
                    <#--                                    <option value="否">否</option>-->
                    <#--                                </#if>-->

                    <#--                            </select>-->
                    <#--                        </div>-->
                        <div class="col-md-4 form-group">
                            <label> <span id="ctl00_cphMain_Label2">是否需要处理</span> </label>
                            <select id="shouldHandle" name="shouldHandle" class="form-control">
                                <#if task.threeBook.shouldHandle ??>
                                    <option value="${task.threeBook.shouldHandle}">${task.threeBook.shouldHandle}</option>
                                    <#if task.threeBook.shouldHandle = '是' >
                                        <option value="否">否</option>
                                    <#else >
                                        <option value="是">是</option>
                                    </#if>
                                <#else >
                                    <option value="是">是</option>
                                    <option value="否">否</option>
                                </#if>

                            </select>
                        </div>
                    <#else >
                        <div class="col-md-3 form-group">
                            <label>
                                <span id="ctl00_cphMain_Label1">专业</span>
                            </label>
                            <select name="professionalType" id="ctl00_cphMain_ddlStatus"
                                    class="form-control select2 ddlstatus">
                                <option value="${task.detailDraw.professionalType}">${task.detailDraw.professionalType}</option>
                                <#list professions as profession>
                                    <option value="${profession.proName}">${profession.proName}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="col-md-3 form-group">
                            <label>
                                <span id="ctl00_cphMain_Label1">图纸类型</span>
                            </label>
                            <select name="drawingType" id="ctl00_cphMain_ddlStatus"
                                    class="form-control select2 ddlstatus">
                                <option value="${task.detailDraw.drawingType}">${task.detailDraw.drawingType}</option>
                                <#list drawTypes as drawType>
                                    <option value="${drawType.dtName}">${drawType.dtName}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="col-md-3 form-group">
                            <label data-toggle="modal"> <span id="ctl00_cphMain_Label2">细化责任人</span>
                            </label><input id="processPerson" name="processPerson" type="text" class="form-control"
                                           required="required"
                                           id="processPerson"
                                           value="${task.detailDraw.processPerson!''}"/>
                            <div class="reciver" id="reciver">
                                <#if task.detailDraw.shouldHandle ?? &&  task.detailDraw.processPerson ??>
                                    <#if task.detailDraw.shouldHandle !='否'>
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                        >通讯录</span>
                                    </#if>

                                </#if>
                            </div>
                        </div>
                        <div class="col-md-3 form-group">
                            <label> <span id="ctl00_cphMain_Label2">是否需要处理</span> </label>
                            <select id="shouldHandle" name="shouldHandle" class="form-control">
                                <#if task.detailDraw.shouldHandle ??>
                                    <option value="${task.detailDraw.shouldHandle}">${task.detailDraw.shouldHandle}</option>
                                </#if>
                                <option value="是">是</option>
                                <option value="否">否</option>

                            </select>
                        </div>

                    </#if>
                    <#if task.typeId == 1>


                        <#if task.threeBook.type == "CR">
                        <#--CR--填写关闭时间-->
                            <div class="col-md-4 form-group">
                                <label> <span id="ctl00_cphMain_Label2">计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN</span>
                                </label><input name="planToCloseTime" type="text" id="" class="form-control"
                                               value="${task.threeBook.planToCloseTime!''}"/>
                            </div>
                            <div class="col-md-4 form-group">
                                <label> <span id="ctl00_cphMain_Label2">实际关闭时间</span>
                                </label><input name="actualCloseTime" type="text" id=""
                                               class="form-control actualCloseTime"
                                               value="${task.threeBook.actualCloseTime!''}"/>
                            </div>
                        <#else>
                        <#--填写处理方式-->

                        <#--table-->
                            <table class="bo table " id="displaytable">
                                <tr>
                                    <td class="title"><label class="control-label">填写处理</label></td>
                                    <td colspan="13" style="text-align: right;"><i
                                                class="glyphicon glyphicon-plus zeng"></i>&nbsp;&nbsp;&nbsp;<i
                                                class="glyphicon glyphicon-minus jian"></i></td>
                                </tr>
                                <tr>
                                    <td colspan="14">
                                        <div class="food">
                                            <table class="table inside process">
                                                <thead>
                                                <tr>
                                                    <th colspan="1" style="width: 77px;">选择</th>
                                                    <th colspan="1">处理方式</th>
                                                    <th colspan="2">处理单号</th>
                                                    <th colspan="2">备注</th>
                                                    <#if  status.statusId = 6 || status.statusId = 7 >
                                                    <#else >
                                                        <th colspan="2">操作</th>
                                                    </#if>
                                                </tr>
                                                </thead>
                                                <tbody class="tbody">
                                                <#if task.threeBook.processes??>
                                                    <#list task.threeBook.processes as pro>
                                                        <tr class="tr">
                                                            <td class="chebox" colspan="1"><span
                                                                        class="labels"><label><input
                                                                                type="checkbox" name="items" disabled
                                                                                class="val"><i>✓</i></label></span></td>
                                                            <td style="display: none"><input
                                                                        name="processes[${pro_index}].tbId"
                                                                        value="${pro.tbId}"/></td>
                                                            <td colspan="1">
                                                                <select name="processes[${pro_index}].handleMethod"
                                                                        class="form-control">
                                                                    <option value="${pro.handleMethod!''}">${pro.handleMethod!''}</option>
                                                                    <option value="FCR">FCR</option>
                                                                    <option value="ICR">ICR</option>
                                                                    <option value="CR">CR</option>
                                                                    <option value="细化">细化</option>
                                                                    <option value="/">/</option>
                                                                </select>
                                                            </td>
                                                            <td colspan="2">
                                                                <input type="text" class="form-control inpu"
                                                                       name="processes[${pro_index}].processOrderNumber"
                                                                       value="${pro.processOrderNumber!''}"
                                                                       style="background-color:#fff;"/>
                                                            </td>
                                                            <td colspan="2"><input type="text" class="form-control inpu"
                                                                                   name="processes[${pro_index}].remarks"
                                                                                   value="${pro.remarks!''}"/></td>
                                                            <#if  status.statusId = 6 || status.statusId = 7 >
                                                            <#else >
                                                                <td colspan="2">
                                                                    <a onclick="updateProcess(this,${pro.tbId})"
                                                                       class="label xiugai"><span
                                                                                class="glyphicon glyphicon-edit"></span>
                                                                        修改</a>
                                                                    <a
                                                                            onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                                                                            href="processremove?tbId=${pro.tbId}&id=${task.taskId?c}&type=1"
                                                                            class="label shanchu"><span
                                                                                class="glyphicon glyphicon-remove"></span>
                                                                        删除</a>
                                                                </td>
                                                            </#if>
                                                        </tr>
                                                    </#list>
                                                </#if >
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </#if>
                        <div class="col-md-4 form-group">
                            <label class="control-label">完成时间</label>
                            <input class="form-control" name="completionTime" readonly
                                   value="${task.threeBook.completionTime!''}"/>
                        </div>
                        <#if task.threeBook.type != "CR">
                            <div class="col-md-4 form-group">
                                <label class="control-label">责任方</label>
                                <select name="processResponsibleParty" id="processResponsibleParty"
                                        <#if task.threeBook.processPerson?? && user2.realName == task.threeBook.processPerson>
                                            required
                                        </#if>
                                        class="form-control">
                                    <option value="${task.threeBook.processResponsibleParty!''}">${task.threeBook.processResponsibleParty!''}</option>
                                    <#if task.threeBook.processResponsibleParty ??>
                                        <#if task.threeBook.processResponsibleParty = '设计院' >
                                        <#else >
                                            <option value="设计院">设计院</option>
                                        </#if>
                                        <#if task.threeBook.processResponsibleParty = '施工承包商' >
                                        <#else >
                                            <option value="施工承包商">施工承包商</option>
                                        </#if>
                                        <#if task.threeBook.processResponsibleParty = '细化引起' >
                                        <#else >
                                            <option value="细化引起">细化引起</option>
                                        </#if>
                                        <#if task.threeBook.processResponsibleParty = '工程公司' >
                                        <#else >
                                            <option value="工程公司">工程公司</option>
                                        </#if>
                                        <#if task.threeBook.processResponsibleParty = '业主' >
                                        <#else >
                                            <option value="业主">业主</option>
                                        </#if>
                                        <#if task.threeBook.processResponsibleParty = '其他' >
                                        <#else >
                                            <option value="其他">其他</option>
                                        </#if>
                                        <#if task.threeBook.processResponsibleParty = '/' >
                                        <#else >
                                            <option value="/">/</option>
                                        </#if>
                                    <#else >
                                        <option value="设计院">设计院</option>
                                        <option value="施工承包商">施工承包商</option>
                                        <option value="细化引起">细化引起</option>
                                        <option value="工程公司">工程公司</option>
                                        <option value="业主">业主</option>
                                        <option value="其他">其他</option>
                                        <option value="/">/</option>
                                    </#if>

                                </select>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">是否涉及索赔</label>
                                <select name="shouldClaim" id="shouldClaim"
                                        <#if task.threeBook.processPerson?? && user2.realName == task.threeBook.processPerson>
                                            required
                                        </#if>
                                        class="form-control">
                                    <option value="${task.threeBook.shouldClaim!''}">${task.threeBook.shouldClaim!''}</option>
                                    <#if task.threeBook.shouldClaim ??>
                                        <#if task.threeBook.shouldClaim = '是' >
                                            <option value="否">否</option>
                                        <#else >
                                            <option value="是">是</option>
                                        </#if>
                                    <#else >
                                        <option value="否">否</option>
                                        <option value="是">是</option>
                                    </#if>
                                </select>
                            </div>
                        </#if>

                    <#--设计点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>设计点值</span> </label>
                            <input name="designPointValue" type="text" id="" class="form-control"
                                   value="${task.threeBook.designPointValue!''}"/>
                        </div>

                    <#--审核点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>审核点值</span> </label>
                            <input name="auditPointValue" type="text" id="" class="form-control"
                                   value="${task.threeBook.auditPointValue!''}"/>
                        </div>

                    <#else >
                        <table class="bo table " id="displaytable">
                            <tr>
                                <td class="title"><label class="control-label">填写问题</label></td>
                                <td colspan="13" style="text-align: right;"><i
                                            class="glyphicon glyphicon-plus zeng2"></i>&nbsp;&nbsp;&nbsp;<i
                                            class="glyphicon glyphicon-minus jian"></i></td>
                            </tr>
                            <tr>
                                <td colspan="14">
                                    <div class="food">
                                        <table class="table inside question">
                                            <thead>
                                            <tr>
                                                <th colspan="1" style="width: 77px;">选择</th>
                                                <th colspan="3">问题描述</th>
                                                <th colspan="1">处理方式</th>
                                                <th colspan="2">处理单号</th>
                                                <th colspan="1">核实郑分会审单问题是否修改</th>
                                                <th colspan="1">备注</th>
                                                <#if  status.statusId = 6 || status.statusId = 7 >
                                                <#else >
                                                    <th colspan="2">操作</th>
                                                </#if>
                                            </tr>
                                            </thead>
                                            <tbody class="tbody">
                                            <#if task.detailDraw.questions??>
                                                <#list task.detailDraw.questions as q>
                                                    <tr class="tr">
                                                        <td class="chebox" colspan="1"><span
                                                                    class="labels"><label><input
                                                                            type="checkbox" name="items" disabled
                                                                            class="val"><i>✓</i></label></span></td>
                                                        <td style="display: none"><input
                                                                    name="questions[${q_index}].ddId"
                                                                    value="${q.ddId}"/></td>
                                                        <td colspan="3">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].problemDescription"
                                                                   value="${q.problemDescription!''}"
                                                                   style="background-color:#fff;"/>
                                                        </td>
                                                        <td colspan="1">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].handleMethod"
                                                                   value="${q.handleMethod!''}"
                                                                   style="background-color:#fff;"/>
                                                        </td>
                                                        <td colspan="2">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].processOrderNumber"
                                                                   value="${q.processOrderNumber!''}"
                                                                   style="background-color:#fff;"/>
                                                        </td>
                                                        <td colspan="1">
                                                            <select name="questions[${q_index}].modify"
                                                                    class="form-control">
                                                                <option value="${q.modify!''}">${q.modify!''}</option>
                                                                <option value="">/</option>
                                                                <option value="是">是</option>
                                                                <option value="否">否</option>
                                                            </select>
                                                        </td>
                                                        <td colspan="1">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].remarks"
                                                                   value="${q.remarks!''}"
                                                                   style="background-color:#fff;"/>
                                                        </td>
                                                        <#if  status.statusId = 6 || status.statusId = 7 >
                                                        <#else >
                                                            <td colspan="2">
                                                                <a onclick="updateQuestion(this,${q.ddId})"
                                                                   class="label xiugai"><span
                                                                            class="glyphicon glyphicon-edit"></span> 修改</a>
                                                                <a
                                                                        onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
                                                                        href="questionremove?ddId=${q.ddId}&id=${task.taskId?c}&type=1"
                                                                        class="label shanchu"><span
                                                                            class="glyphicon glyphicon-remove"></span>
                                                                    删除</a>
                                                            </td>
                                                        </#if>

                                                    </tr>
                                                </#list>
                                            </#if >
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="col-md-4 form-group">
                            <label class="control-label">完成时间</label>
                            <input class="form-control" name="completionTime" readonly
                                   value="${task.detailDraw.completionTime!''}"/>
                        </div>
                    <#--设计点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>设计点值</span> </label>
                            <input name="designPointValue" type="text" id="" class="form-control"
                                   value="${task.detailDraw.designPointValue!''}"/>
                        </div>

                    <#--审核点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>审核点值</span> </label>
                            <input name="auditPointValue" type="text" id="" class="form-control"
                                   value="${task.detailDraw.auditPointValue!''}"/>
                        </div>

                    </#if>
                    <div class="col-md-4 form-group">
                        <label> <span id="ctl00_cphMain_Label2">反馈</span>
                        </label>
                        <#if task.typeId == 1>
                            <textarea class="form-control text" placeholder="反馈"
                                      name="loggerTicking">${task.threeBook.loggerTicking!''}</textarea>
                        <#else >
                            <textarea class="form-control text" placeholder="反馈"
                                      name="loggerTicking">${task.detailDraw.loggerTicking!''}</textarea>
                        </#if>
                    </div>
                    <input
                            name="taskId" type="text" id="ctl00_cphMain_txtPowerValue"
                            class="form-control" value="${task.taskId?c}"
                            style="display: none;"/>
                    <input
                            name="commit" type="text" id="commit"
                            class="form-control" value=""
                            style="display: none;"/>
                </div>


            </div>

            <#if user2.realName != task.usersId.realName!''>
                <div class="box-footer foot">
                    <input class="btn btn-primary" id="save" type="submit" value="保存"

                            <#if  status.statusId == 6 || status.statusId == 7 >
                                disabled="disabled"
                            </#if>

                            <#if task.typeId == 1 >
                                <#if task.threeBook.processPerson?? && task.threeBook.processPerson != ''>
                                    <#if user2.realName != task.threeBook.processPerson!''>
                                        disabled="disabled"
                                    </#if>
                                </#if>

                            </#if>
                            <#if task.typeId == 2 >
                                <#if task.detailDraw.processPerson?? && task.detailDraw.processPerson != ''>
                                    <#if user2.realName != task.detailDraw.processPerson!''>
                                        disabled="disabled"
                                    </#if>
                                </#if>

                            </#if>
                    />
                    <input class="btn btn-default" id="cancel" type="button" value="取消"
                           onclick="window.history.back();"/>
                    <#if  status.statusId == 5 || status.statusId == 8  >
                        <#if task.typeId == 1 && user2.realName == task.threeBook.processPerson!'' >
                            <input class="btn btn-success" id="saveandcommit" type="submit" value="审核申请"/>
                        </#if>
                        <#if task.typeId == 2 && user2.realName == task.detailDraw.processPerson!'' >
                            <input class="btn btn-success" id="saveandcommit" type="submit" value="审核申请"/>
                        </#if>

                    </#if>
                    <#if  status.statusId == 6 >
                        <#if task.typeId = 1 && user2.realName == task.threeBook.auditPerson >
                            <input class="btn btn-success" id="commitaccess" type="submit" value="通过"/>
                            <input class="btn btn-danger" id="notcommitaccess" type="submit" value="驳回"/>
                        </#if>
                        <#if task.typeId = 2 && user2.realName == task.detailDraw.auditPerson >
                            <input class="btn btn-success" id="commitaccess" type="submit" value="通过"/>
                            <input class="btn btn-danger" id="notcommitaccess" type="submit" value="驳回"/>
                        </#if>
                    </#if>
                </div>
            <#else >
                <div class="box-footer foot">
                    <input class="btn btn-primary" id="save" type="submit" value="保存"/>
                    <input class="btn btn-default" id="cancel" type="button" value="取消"
                           onclick="window.history.back();"/>
                    <#if  status.statusId == 6 >
                        <#if task.typeId = 1 && user2.realName == task.threeBook.auditPerson >
                            <input class="btn btn-success" id="commitaccess" type="submit" value="通过"/>
                            <input class="btn btn-danger" id="notcommitaccess" type="submit" value="驳回"/>
                        </#if>
                        <#if task.typeId = 2 && user2.realName == task.detailDraw.auditPerson >
                            <input class="btn btn-success" id="commitaccess" type="submit" value="通过"/>
                            <input class="btn btn-danger" id="notcommitaccess" type="submit" value="驳回"/>
                        </#if>
                    </#if>
                </div>

            </#if>

        </form>
    </div>
</div>
<#include "/common/reciver.ftl">
<#include "/common/modalTip.ftl">
<input type="text" class="recive_list" style="display: none">
<script type="text/javascript">
    $('#saveandcommit').on("click", function () {
        $('#commit').val('commit');
    });
    $('#commitaccess').on("click", function () {
        $('#commit').val('access');
    });
    $('#notcommitaccess').on("click", function () {
        $('#commit').val('notaccess');
    });
    $('#shouldHandle').change(function () {
        var selectedValue = $(this).val();
        if (selectedValue === '是') {
            $('#displaytable').show();
            $('#processResponsibleParty').removeAttr('required');
            $('#shouldClaim').removeAttr('required');
            // $('#processPerson').removeAttr('readonly');
            $('#reciver').show();
            $('#processPerson').attr('required', 'required');
        } else {
            // $('#processPerson').val('');
            $('#displaytable').hide();
            // $('#processPerson').attr('readonly', 'readonly');
            $('#processPerson').removeAttr('required')
            // $('#reciver').hide();
            $('#processResponsibleParty').attr('required', 'required');
            $('#shouldClaim').attr('required', 'required');
        }
    });


    function updateProcess(button, tbId) {
        // 获取当前按钮所在的行
        var row = button.parentNode.parentNode;
        var handleMethod = row.querySelector('select');
        var processOrderNumber = row.cells[3].children[0].value;
        var remarks = row.cells[4].children[0].value;
        $(".xiugai").load("processedit", {
            tbId: tbId,
            handleMethod: handleMethod.value,
            processOrderNumber: processOrderNumber,
            remarks: remarks,
        });
        window.location.href = "/mytask";
    };

    function updateQuestion(button, ddId) {
        // 获取当前按钮所在的行
        var row = button.parentNode.parentNode;
        var problemDescription = row.cells[2].children[0].value;
        var handleMethod = row.cells[3].children[0].value;
        var processOrderNumber = row.cells[4].children[0].value;
        var modify = row.cells[5].children[0].value;
        var remarks = row.cells[6].children[0].value;
        $(".xiugai").load("questionedit", {
            ddId: ddId,
            problemDescription: problemDescription,
            handleMethod: handleMethod,
            processOrderNumber: processOrderNumber,
            modify: modify,
            remarks: remarks
        });
        window.location.href = "/mytask";
    };
    $(".xiugai").on("click", ".usersearchgo", function () {
        var usersearch = $(".thistable .usersearch").val();
        console.log(usersearch);
        $(".thistable").load("usermanagepaging", {usersearch: usersearch});
    });

    $(function () {
        var i = $('.tbody').find("tr").length;
        //增加一行
        $(".zeng").click(function () {
            var td1 = $('<td class="chebox" colspan="1"></td>').append($('<span class="labels"></span>').append($('<label></label>').append($('<input type="checkbox" name="items"  class="val" >')).append($('<i></i>').text('✓'))));
            var td2 = $('<td colspan="1"></td>').append($('<select class="form-control" name="processes[' + i + '].handleMethod"><option value="FCR">FCR</option><option value="ICR">ICR</option><option value="CR">CR</option><option value="细化">细化</option><option value="/">/</option></select>'));
            var td3 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="processes[' + i + '].processOrderNumber" style="background-color:#fff;"/>'));
            var td4 = $('<td colspan="1"></td>').append($('<input type="text" class="form-control inpu" name="processes[' + i + '].remarks"/>'));
            var tr = $('<tr class="tr"></tr>').append(td1).append(td2).append(td3).append(td4);
            $('.tbody').append(tr);
            i = i + 1;
        });
        $(".zeng2").click(function () {
            var td1 = $('<td class="chebox" colspan="1"></td>').append($('<span class="labels"></span>').append($('<label></label>').append($('<input type="checkbox" name="items"  class="val" >')).append($('<i></i>').text('✓'))));
            var td2 = $('<td colspan="3"></td>').append($('<input type="text" class="form-control inpu" name="questions[' + i + '].problemDescription" style="background-color:#fff;"/>'));
            var td4 = $('<td colspan="1"></td>').append($('<input type="text" class="form-control inpu" name="questions[' + i + '].handleMethod" style="background-color:#fff;"/>'));
            var td5 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="questions[' + i + '].processOrderNumber" style="background-color:#fff;"/>'));
            var td6 = $('<td colspan="1"></td>').append($('<select class="form-control" name="questions[' + i + '].modify"><option value="">/</option><option value="是">是</option>  <option value="否">否</option></select>'));
            var td7 = $('<td colspan="1"></td>').append($('<input type="text" class="form-control inpu" name="questions[' + i + '].remarks" style="background-color:#fff;"/>'));
            var tr = $('<tr class="tr"></tr>').append(td1).append(td2).append(td4).append(td5).append(td6).append(td7);
            $('.tbody').append(tr);
            i = i + 1;
        });
        //把tr置空
        $(".jian").click(function () {

            $("[name=items]:checkbox").each(function () {
                if (this.checked) {
                    //获取被选中了的行
                    var $tr = $(this).parents(".tr");
                    $tr.html("");

                }
            })
        });
        $('.reciver').on('click', function () {
            $('#myModal').modal("toggle");
            $(this).siblings("input").val("");
            $('.reciver').removeClass("qu");
            $(this).addClass("qu");
        });
        $(".recive_list").change(function () {
            var $val = $(this).val();
            $(".qu").siblings("input").val($val);
        });

    })
</script>
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>