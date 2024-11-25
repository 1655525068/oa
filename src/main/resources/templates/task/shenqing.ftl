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
            <h1 style="font-size:24px;margin: 0;" class="">审核申请</h1>
        </div>
        <div class="col-md-10 text-right right-me">
            <a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
            >
            <a disabled="disabled">审核申请</a>
        </div>
    </div>
    <div class="containers">

        <button type="button" class="bs btn btn-xs btn-default out">
            <a href="/myseetasks?id=${task.taskId}">
                <span class="glyphicon glyphicon-chevron-left back">返回</span></a>
        </button>


        <div class="page-header"></div>
        <form action="shenqingzhong">
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
                        </h3>

                        <#if task.reciverlist??>
                            <h5 class="fonts">

                                <span id="ctl00_cphMain_lblFrom" class="mailbox-read-time">录入人：<i>${user.userName}</i> &nbsp;&nbsp;责任人：<i>${task.reciverlist}</i></span>

                                <span id="ctl00_cphMain_lblDate"
                                      class="mailbox-read-time pull-right">${task.publishTime}</span>
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
								</span>
                        <span id="ctl00_cphMain_lblNote"></span>
                    </div>
                    <div class="page-header page"></div>
                    <div class="col-md-4 form-group">
                        <label>
                            <span id="ctl00_cphMain_Label1">状态</span>
                        </label>
                        <input name="" type="text" id="" class="form-control"
                               readonly="readonly"
                               value="${status.statusName}"/>

                        <input name="loggerStatusid" type="text" id="" class="form-control" style="display: none"
                               readonly="readonly"
                               value="${status.statusId}"/>
                    </div>
                    <#if task.typeId == 1>
                        <div class="col-md-4 form-group">
                            <label data-toggle="modal"> <span id="ctl00_cphMain_Label2">处理人</span>
                            </label><input name="processPerson" type="text" id="" class="form-control"
                                           readonly="readonly"
                                           value="${task.threeBook.processPerson!''}"/>
                        </div>

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
                            <div class="col-md-4 form-group">
                                <label> <span id="ctl00_cphMain_Label2">是否需要处理</span> </label>
                                <input name="shouldHandle" type="text" id="" class="form-control"
                                       readonly="readonly"
                                       value="${task.threeBook.shouldHandle!''}"/>
                            </div>
                        <#--table-->
                            <#if task.threeBook.shouldHandle == '是'>
                                <table class="bo table ">
                                    <tr>
                                        <td class="title"><label class="control-label">填写处理</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="14">
                                            <div class="food">
                                                <table class="table inside process">
                                                    <thead>
                                                    <tr>
                                                        <th colspan="1" style="width: 77px;">选择</th>
                                                        <th colspan="2">处理方式</th>
                                                        <th colspan="2">处理单号</th>
                                                        <th colspan="2">备注</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody class="tbody">
                                                    <#if task.threeBook.processes??>
                                                        <#list task.threeBook.processes as pro>
                                                            <tr class="tr">
                                                                <td class="chebox" colspan="1"><span
                                                                            class="labels"><label><input
                                                                                    type="checkbox" name="items"
                                                                                    disabled
                                                                                    class="val"><i>✓</i></label></span>
                                                                </td>
                                                                <td style="display: none"><input
                                                                            name="processes[${pro_index}].tbId"
                                                                            readonly="readonly"
                                                                            value="${pro.tbId}"/></td>
                                                                <td colspan="2">
                                                                    <input
                                                                            name="processes[${pro_index}].handleMethod"
                                                                            class="form-control"
                                                                            readonly="readonly"
                                                                            value="${pro.handleMethod}"/>
                                                                </td>
                                                                <td colspan="2">
                                                                    <input type="text" class="form-control inpu"
                                                                           name="processes[${pro_index}].processOrderNumber"
                                                                           value="${pro.processOrderNumber!''}"
                                                                           readonly="readonly"
                                                                    />
                                                                </td>
                                                                <td colspan="2"><input type="text"
                                                                                       class="form-control inpu"
                                                                                       name="processes[${pro_index}].remarks"
                                                                                       readonly="readonly"
                                                                                       value="${pro.remarks!''}"/></td>
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

                        </#if>
                        <div class="col-md-4 form-group">
                            <label class="control-label">完成时间</label>
                            <input class="form-control" name="completionTime" readonly
                                   value="${task.threeBook.completionTime!''}"/>
                        </div>
                        <div class="col-md-4 form-group">
                            <label class="control-label">责任方</label>
                            <select name="processResponsibleParty"
                                    readonly="readonly"
                                    class="form-control">
                                <option value="${task.threeBook.processResponsibleParty!''}">${task.threeBook.processResponsibleParty!''}</option>
                            </select>
                        </div>
                        <div class="col-md-4 form-group">
                            <label class="control-label">是否涉及索赔</label>
                            <select name="shouldClaim"
                                    readonly="readonly"
                                    class="form-control">
                                <option value="${task.threeBook.shouldClaim!''}">${task.threeBook.shouldClaim!''}</option>
                            </select>
                        </div>
                    <#--设计点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>设计点值</span> </label>
                            <input name="designPointValue" type="text" id="" class="form-control" readonly="readonly"
                                   value="${task.threeBook.designPointValue!''}"/>
                        </div>

                    <#--审核点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>审核点值</span> </label>
                            <input name="auditPointValue" type="text" id="" class="form-control" readonly="readonly"
                                   value="${task.threeBook.auditPointValue!''}"/>
                        </div>

                    <#else >
                        <div class="col-md-4 form-group">
                            <label data-toggle="modal"> <span id="ctl00_cphMain_Label2">细化责任人</span>
                            </label><input name="processPerson" type="text" id="" class="form-control"
                                           readonly="readonly"
                                           value="${task.detailDraw.processPerson!''}"/>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span id="ctl00_cphMain_Label2">是否需要处理</span> </label>
                            <select name="shouldHandle" class="form-control"
                                    readonly="readonly">
                                <#if task.detailDraw.shouldHandle ??>
                                    <option value="${task.detailDraw.shouldHandle}">${task.detailDraw.shouldHandle}</option>
                                </#if>
                            </select>
                        </div>
                        <table class="bo table ">
                            <tr>
                                <td class="title"><label class="control-label">填写问题</label></td>
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
                                                                    readonly="readonly"
                                                                    value="${q.ddId}"/></td>
                                                        <td colspan="3">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].problemDescription"
                                                                   readonly="readonly"
                                                                   value="${q.problemDescription!''}"/>
                                                        </td>
                                                        <td colspan="1">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].handleMethod"
                                                                   readonly="readonly"
                                                                   value="${q.handleMethod!''}"/>
                                                        </td>
                                                        <td colspan="2">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].processOrderNumber"
                                                                   readonly="readonly"
                                                                   value="${q.processOrderNumber!''}"/>
                                                        </td>
                                                        <td colspan="1">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].modify"
                                                                   readonly="readonly"
                                                                   value="${q.modify!''}"/>
                                                        </td>
                                                        <td colspan="1">
                                                            <input type="text" class="form-control inpu"
                                                                   name="questions[${q_index}].remarks"
                                                                   readonly="readonly"
                                                                   value="${q.remarks!''}"/>
                                                        </td>
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
                            <input id="completionTime" class="form-control" name="completionTime" readonly="readonly"
                                   value="${task.detailDraw.completionTime!''}"/>
                        </div>
                    <#--设计点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>设计点值</span> </label>
                            <input name="designPointValue" type="text" id="" class="form-control" readonly="readonly"
                                   value="${task.detailDraw.designPointValue!''}"/>
                        </div>

                    <#--审核点值-->
                        <div class="col-md-4 form-group">
                            <label> <span>审核点值</span> </label>
                            <input name="auditPointValue" type="text" id="" class="form-control" readonly="readonly"
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
                    <div class="col-md-4 form-group">
                        <label data-toggle="modal"> <span id="ctl00_cphMain_Label2">审核人</span>
                        </label><input id="auditPerson" name="auditPerson" type="text" id="" class="form-control"
                                       readonly="readonly"
                                       style="background-color: #FFFFFF"
                                <#if task.typeId ==1 >
                                    value="${task.threeBook.auditPerson!''}"
                                <#else>
                                    value="${task.detailDraw.auditPerson!''}"
                                </#if>
                        />

                        <div class="reciver">
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                        >通讯录</span>
                        </div>
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

            <div class="box-footer foot">
                <input class="btn btn-success" id="save2" type="submit" value="申请"/>
                <input class="btn btn-default" id="cancel" type="button" value="取消"
                       onclick="backtask()"/>
            </div>

        </form>
    </div>
</div>
<#include "/common/reciver.ftl">
<#include "/common/modalTip.ftl">
<input type="text" class="recive_list" style="display: none">
<script type="text/javascript">
    function backtask() {
        window.location.href = "/mytask";
    }

    $(function () {

        $('#save2').attr('disabled', 'disabled')
        $('.reciver').on('click', function () {
            $('#myModal').modal("toggle");
            $(this).siblings("input").val("");
            $('.reciver').removeClass("qu");
            $(this).addClass("qu");
        });
        $(".recive_list").change(function () {
            var $val = $(this).val();
            $(".qu").siblings("input").val($val);
            if ($val !== '') {
                $('#save2').removeAttr("disabled")
            } else {
                $('#save2').attr('disabled', 'disabled')
            }
        });
        $('#auditPerson').on('input', function () {
            if ($(this).val() !== '') {
                $('#save2').removeAttr("disabled")
            } else {
                $('#save2').attr('disabled', 'disabled')
            }
        })

    })
</script>
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>