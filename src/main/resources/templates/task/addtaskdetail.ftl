<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css"/>
<link rel="stylesheet" type="text/css" href="css/common/tanchuang.css"/>
<script type="text/javascript" src="js/task/task.js"></script>
<style type="text/css">
    a {
        color: black;
    }

    a:hover {
        text-decoration: none;
    }

    .reciver {
        position: relative;
        float: right;
        margin-top: -28px;
        right: 5px;
        cursor: pointer;
    }
</style>
<div class="row" style="padding-top: 10px;">
    <div class="col-md-2">
        <h1 style="font-size: 24px; margin: 0;" class="">任务管理</h1>
    </div>
    <div class="col-md-10 text-right">
        <a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
                disabled="disabled">任务管理</a>
    </div>
</div>
<div class="row" style="padding-top: 15px;">
    <div class="col-md-12">

        <div class="bgc-w box">
            <!--盒子头-->
            <div class="box-header">
                <h3 class="box-title">
                    <a href="javascript:history.back();" class="label label-default"
                       style="padding: 5px;">
                        <i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
                    </a>
                </h3>
                <h3>
                    <form class="fileuploadform" action="readdetaildraw" method="post" enctype="multipart/form-data">
                        <div class="btn btn-primary uploadfile"
                             style="position: relative; overflow: hidden;width: 100%; margin-bottom: 20px;">
                            <i class="glyphicon glyphicon-open"></i>细化文件导入
                            <input type="file" name="file"
                                   style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;"/>
                        </div>
                    </form>
                </h3>
            </div>

            <!--盒子身体-->
            <form action="ck_addtaskdetail" method="post" onsubmit="return check();">
                <div class="box-body no-padding">
                    <div class="box-body">
                        <!--错误信息提示  -->
                        <div class="alert alert-danger alert-dismissable" role="alert" style="display: none;">
                            错误信息:
                            <button class="thisclose close" type="button">&times;</button>
                            <span class="error-mess"></span>
                        </div>
                        <div class="row">
                            <!-- 任务状态 -->
                            <div class="col-md-4 form-group">
                                <label class="control-label">任务状态</label>
                                <select class="form-control" name="statusId">
                                    <#list statuslist as status>
                                        <#if status.statusModel=="aoa_task_list">
                                            <option value="${status.statusId}">${status.statusName}</option>
                                        </#if>
                                    </#list>
                                </select>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">开始日期</label>
                                <input id="starTime" name="starTime" class="form-control"/>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">结束日期</label>
                                <input id="endTime" name="endTime" class="form-control"/>
                            </div>
                            <div class="col-md-4 form-group">

                                <label class="control-label">标题</label>
                                <input name="title" type="text" id="title_Name" class="form-control"/>
                            </div>


                            <input class="form-control" name="taskDescribe" style="display: none" value="描述"/>


                            <input class="form-control" name="comment" style="display: none" value="评价"/>

                            <#--文件编码-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">文件编码</label>
                                <input class="form-control" name="documentCodes" value=""/>
                            </div>
                            <#--内部文件编号-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">内部文件编号</label>
                                <input class="form-control" name="internalDocumentCodes" value=""/>
                            </div>
                            <#--图册号-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">图册号</label>
                                <input class="form-control" name="catalogNumber" value=""/>
                            </div>
                            <#--专业-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">专业</label>
                                <select class="form-control" name="professionalType">
                                    <option value="管道">管道</option>
                                    <option value="电气">电气</option>
                                    <option value="电气">通风</option>
                                    <option value="电气">仪控</option>
                                    <option value="电气">其它</option>
                                </select>
                            </div>
                            <#--版本-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">版本</label>
                                <select class="form-control" name="version">
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="C">C</option>
                                    <option value="D">D</option>
                                </select>
                            </div>
                            <#--状态-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">状态</label>
                                <select class="form-control" name="state">
                                    <option value="CFC">CFC</option>
                                </select>
                            </div>
                            <#--图纸类型-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">图纸类型</label>
                                <input class="form-control" name="drawingType" value=""/>
                            </div>
                            <#--接收日期-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">接收日期</label>
                                <input id="receivingTime" class="form-control" name="receivingTime" value=""/>
                            </div>
                            <#--是否需FU-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">是否需FU</label>
                                <select id="doNeedFU" class="form-control" name="doNeedFU">
                                    <option value="是">是</option>
                                    <option value="否">否</option>
                                </select>
                            </div>
                            <#--FU计划时间-->
                            <div class="col-md-4 form-group displaytable">
                                <label class="control-label">FU计划时间</label>
                                <input id="planTimeFU" class="form-control" name="planTimeFU" value=""/>
                            </div>
                            <#--FU单号-->
                            <div class="col-md-4 form-group displaytable">
                                <label class="control-label">FU单号</label>
                                <input class="form-control" name="numberFU" value=""/>
                            </div>
                            <#--计划细化完成时间（无需细化填/）-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">计划细化完成时间（无需细化填/）</label>
                                <input class="form-control" name="planCompletionTime" value=""/>
                            </div>
                            <#--细化责任人-->
                            <div class="col-md-4 form-group">
                                <label class="control-label">识别责任人</label>
                                <input class="form-control" name="reciverlist" value=""/>
                                <div class="reciver">
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                        >通讯录</span>
                                </div>
                            </div>


                            <span class="labels" style="display: none"><label><input type="checkbox" name="top"
                                                                                     style="display: none"
                                                                                     class="val"><i>✓</i></label></span>


                            <span
                                    class="labels" style="display: none"><label><input type="checkbox" name="cancel"
                                                                                       style="display: none"
                                                                                       class="val"><i>✓</i></label></span>

                        </div>
                    </div>
                </div>
                <!--盒子尾-->
                <div class="box-footer">
                    <input class="btn btn-primary" id="save" type="submit" value="保存"/>
                    <input class="btn btn-default" id="cancel" type="button" value="取消"
                           onclick="window.history.back();"/>
                </div>
            </form>

        </div>
    </div>
</div>

<!-- 接收人弹窗-->
<#include "/common/reciver.ftl">
<!--校验模态框 -->

<#include "/common/modalTip.ftl">
<input type="text" class="recive_list" style="display: none">
<script type="text/javascript">
    //表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
    function check() {
        console.log("开始进入了");
        //提示框可能在提交之前是block状态，所以在这之前要设置成none
        $('.alert-danger').css('display', 'none');
        var isRight = 1;
        $('.form-control').each(function (index) {
            // 如果在这些input框中，判断是否能够为空
            if ($(this).val() === "") {
                // 排除哪些字段是可以为空的，在这里排除
                if ($('#doNeedFU').val() === '是') {
                    debugger;
                    if (index === 19) {
                        return true;
                    }
                } else {
                    if (index === 15 || index === 16 || index === 19) {
                        return true;
                    }
                }


                // 获取到input框的兄弟的文本信息，并对应提醒；
                var brother = $(this).siblings('.control-label').text();
                ;
                var errorMess = "[" + brother + "输入框信息不能为空]";
                // 对齐设置错误信息提醒；红色边框
                $(this).parent().addClass("has-error has-feedback");
                $('.alert-danger').css('display', 'block');
                // 提示框的错误信息显示
                $('.error-mess').text(errorMess);
                // 模态框的错误信息显示
                $('.modal-error-mess').text(errorMess);
                isRight = 0;
                return false;
            } else {
                // 在这个里面进行其他的判断；不为空的错误信息提醒
                return true;
            }
        });
        if (isRight === 0) {
            // modalShow(0);
            return false;
        } else if (isRight === 1) {
            //modalShow(1);
            return true;
        }

    }

    $(function () {
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
        $(".uploadfile input").bind("change", function () {
            $(".fileuploadform").submit();
        });
        $('#doNeedFU').change(function () {
            var selectedValue = $(this).val();
            if (selectedValue === '是') {
                $('.displaytable').show();
            } else {
                $('.displaytable').hide();
            }
        });
    })
</script>
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>