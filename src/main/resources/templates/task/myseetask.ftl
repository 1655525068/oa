<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/task/seetask.css"/>
<style type="text/css">
    a {
        color: #fff;
    }

    a:hover {
        text-decoration: none;
        color: #fff;
    }

    .text {
        min-height: 114px;
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
            <h1 style="font-size:24px;margin: 0;" class="">三单任务查看</h1>
        </div>
        <div class="col-md-10 text-right right-me">
            <a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
            >
            <a disabled="disabled">三单任务查看</a>
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
                            <span id="ctl00_cphMain_lblTitle">主题：${task.title}</span></h3>
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
                            <span id="ctl00_cphMain_lblDescription"
                                  class="red-badge">三单号：${task.threeBook.threeBookNumbers}
                            中文名称：${task.threeBook.chineseName}

                            </span>
                            <#if task.threeBook.loggerTicking?? && task.threeBook.loggerTicking !='' >
                                <span style="background-color: grey"> <i
                                            style="color: orange">反馈：${task.threeBook.loggerTicking!''}</i></span>
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
                    <div class="col-md-4 form-group">
                        <label>
                            <span id="ctl00_cphMain_Label1">状态</span>
                        </label>
                        <select name="loggerStatusid" id="ctl00_cphMain_ddlStatus"
                                class="form-control select2 ddlstatus">
                            <option value="${status.statusId}">${status.statusName}</option>
                            <#if status.statusId ==3>
                            <#else>
                                <option value="3">新任务</option>
                            </#if>
                            <#if status.statusId ==4>
                            <#else>
                                <option value="4">已接收</option>
                            </#if>
                            <#if status.statusId ==5>
                            <#else>
                                <option value="5">进行中</option>
                            </#if>
                            <#if status.statusId ==6>
                            <#else>
                                <option value="6">已提交</option>
                            </#if>
                            <#if c_user.role.roleName?contains("负责人") >
                                <option value="7">已完成</option>
                            </#if>

                        </select>
                    </div>
                    <#-- todo 处理人，是否需要处理，处理方式，处理单号，处理完成时间，责任方，备注，是否涉及索赔，计划关闭时间，实际关闭时间，设计点值，审核点值-->


                    <div class="col-md-4 form-group">
                        <label> <span id="ctl00_cphMain_Label2">处理人</span> </label>
                        <input name="processPerson" type="text" id="" class="form-control"
<#--                                <#if !c_user.role.roleName?contains("负责人") >-->
<#--                                    readonly="readonly"-->
<#--                                </#if >-->
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
                            </label><input name="actualCloseTime" type="text" id="" class="form-control"
                                           value="${task.threeBook.actualCloseTime!''}"/>
                        </div>
                    <#else>
                    <#--填写处理方式-->
                    <#--是否需要处理-->
                        <div class="col-md-4 form-group">
                            <label> <span id="ctl00_cphMain_Label2">是否需要处理</span> </label>
                            <select name="shouldHandle" class="form-control">
                                <#if task.threeBook.shouldHandle??>
                                    <option value="${task.threeBook.shouldHandle}">${task.threeBook.shouldHandle}</option>
                                </#if>
                                <option value="">--</option>
                                <option value="是">是</option>
                                <option value="否">否</option>
                                <option value="/">/</option>
                            </select>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span>处理方式(ICR/细化)</span> </label>
                            <select name="handleMethod" class="form-control">
                                <#if task.threeBook.handleMethod??>
                                    <option value="${task.threeBook.handleMethod}">${task.threeBook.handleMethod}</option>
                                </#if>
                                <option value="">--</option>
                                <option value="ICR">ICR</option>
                                <option value="细化">细化</option>
                                <option value="/">/</option>
                            </select>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span>处理单号</span> </label>
                            <input name="processOrderNumber" type="text" id="" class="form-control"
                                   value="${task.threeBook.processOrderNumber!''}"/>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span>处理完成时间</span> </label>
                            <input name="processCompletionTime" type="text" id="" class="form-control"
                                   value="${task.threeBook.processCompletionTime!''}"/>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span>责任方</span> </label>
                            <input name="processResponsibleParty" type="text" id="" class="form-control"
                                   value="${task.threeBook.processResponsibleParty!''}"/>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span>备注</span> </label>
                            <input name="remarks" type="text" id="" class="form-control"
                                   value="${task.threeBook.remarks!''}"/>
                        </div>
                        <div class="col-md-4 form-group">
                            <label> <span>是否涉及索赔</span> </label>
                            <select name="shouldClaim" class="form-control">
                                <#if task.threeBook.shouldClaim??>
                                    <option value="${task.threeBook.shouldClaim}">${task.threeBook.shouldClaim}</option>
                                </#if>
                                <option value="">--</option>
                                <option value="否">否</option>
                                <option value="是">是</option>
                                <option value="/">/</option>
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

                    <#--反馈-->
                    <div class="col-md-6 form-group">
                        <label> <span id="ctl00_cphMain_Label2">反馈</span>
                        </label> <input name="loggerTicking" type="text"
                                        id="ctl00_cphMain_txtPowerValue" class="form-control"
                                        value="${task.threeBook.loggerTicking!''}"/>
                    </div>
                    <input
                            name="taskId" type="text" id="ctl00_cphMain_txtPowerValue"
                            class="form-control" value="${task.taskId}"
                            style="display: none;"/>
                </div>


            </div>

            <div class="box-footer foot">
                <input class="btn btn-primary" id="save" type="submit" value="保存"
                <#if  (status.statusId == 6 || status.statusId == 7) && !c_user.role.roleName?contains("负责人") >
                    disabled="disabled"
                        </#if>
                />
                <input class="btn btn-default" id="cancel" type="button" value="取消"
                       onclick="window.history.back();"/>
            </div>

        </form>
    </div>
</div>
