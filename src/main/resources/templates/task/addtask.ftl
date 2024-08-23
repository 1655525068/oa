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


    .text {
        min-height: 114px;
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
            </div>

            <!--盒子身体-->
            <form action="ck_addtask" method="post" onsubmit="return check();">
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

                            <div class="col-md-4 form-group">
                                <label class="control-label">描述</label>
                                <input class="form-control" name="taskDescribe" value="描述"/>
                            </div>
                            <div class="col-md-4 form-group">
                                <label class="control-label">评价</label>
                                <input class="form-control" name="comment" value="评价"/>
                            </div>

                                <!-- 类型 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label"> <span>类型</span></label>
                                    <select class="form-control" name="threeType">
                                        <option value="FCR">FCR</option>
                                        <option value="CR">CR</option>
                                        <option value="DEN">DEN</option>
                                    </select>
                                </div>
                                <!-- 三单号 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">三单号</label>
                                    <input name="threeBookNumbers" type="text" id="threeBookNumbers"
                                           class="form-control"/>
                                </div>
                                <!-- 中文名称 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">中文名称</label>
                                    <input name="chineseName" type="text" id="chineseName" class="form-control"/>
                                </div>
                                <!-- FCR版本 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label"> <span>FCR版本</span></label>
                                    <select class="form-control" name="fcrVersion">
                                        <option value="A">A</option>
                                    </select>
                                </div>
                                <!-- 状态 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">状态</label>
                                    <select class="form-control" name="state">
                                        <option value="有效">有效</option>
                                        <option value="无效">无效</option>
                                    </select>
                                </div>
                                <!-- 编制人 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label" data-toggle="modal">编制人</label>
                                    <input name="preparedBy" type="text" class="form-control "
                                           style="background-color:#fff;"/>
                                    <div class="reciver">
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                        >通讯录</span>
                                    </div>
                                </div>
                                <!-- 最新版 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">最新版</label>
                                    <select class="form-control" name="latestVersion">
                                        <option value="Y">Y</option>
                                        <option value="N">N</option>
                                    </select>
                                </div>
                                <!-- 接收时间 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">接收时间</label>
                                    <input id="receivingTime" name="receivingTime" class="form-control"/>
                                </div>
                                <!-- 分发时间 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">分发时间</label>
                                    <input id="distributionTime" name="distributionTime" class="form-control"/>
                                </div>
                                <!-- 作废标识 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">作废标识</label>
                                    <select class="form-control" name="invalidIdentification">
                                        <option value="N">N</option>
                                        <option value="Y">Y</option>
                                    </select>
                                </div>
                                <!-- 相关文件编码 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">相关文件编码</label>
                                    <input name="relatedDocumentCodes" type="text" id="relatedDocumentCodes"
                                           class="form-control"/>
                                </div>
                                <!-- 相关文件内部编码 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">相关文件内部编码</label>
                                    <input name="internalCodes" type="text" id="internalCodes" class="form-control"/>
                                </div>
                                <!-- 图纸版本 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">图纸版本</label>
                                    <select class="form-control" name="drawVersion">
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                    </select>
                                </div>
                                <!-- 专业 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">专业</label>
                                    <select class="form-control" name="professionalType">
                                        <option value="管道">管道</option>
                                        <option value="通风">通风</option>
                                        <option value="电仪">电仪</option>
                                    </select>
                                </div>
                                <!-- 责任方 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label">责任方</label>
                                    <select class="form-control" name="responsibleParty">
                                        <option value="建安承包商">建安承包商</option>
                                        <option value="工程公司">工程公司</option>
                                        <option value="其他">其他</option>
                                    </select>
                                </div>
                                <!-- 识别责任人 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label" data-toggle="modal">识别责任人</label>
                                    <input name="reciverlist" type="text" id=""  class="form-control "
                                           style="background-color:#fff;"/>
                                    <div class="reciver">
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                              >通讯录</span>
                                    </div>
                                </div>
                                <!-- 处理人 -->
                                <div class="col-md-4 form-group">
                                    <label class="control-label" data-toggle="modal">处理人</label>
                                    <input name="processPerson" type="text" id="" class="form-control "
                                           style="background-color:#fff;"/>
                                    <div class="reciver">
                                        <span class="label label-success glyphicon glyphicon-plus" data-toggle="modal"
                                        >通讯录</span>
                                    </div>
                                </div>
                            <div class="col-md-4 form-group ">
                                <label class="control-label">置顶</label>
                                <span class="labels"><label><input type="checkbox" name="top"
                                                                   class="val"><i>✓</i></label></span>
                            </div>

                            <div class="col-md-4  form-group">
                                <label class="control-label">取消</label> <span
                                        class="labels"><label><input type="checkbox" name="cancel" class="val"><i>✓</i></label></span>
                            </div>
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
                if (index === 7 || index === 11 || index === 22 || index === 23 || index === 24) {
                    return true;
                }

                // 获取到input框的兄弟的文本信息，并对应提醒；
                var brother = $(this).siblings('.control-label').text();
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
        $('#mySelect').change(function(){
            var selectedValue = $(this).val();
            // 隐藏所有div
            $('#div1, #div2').hide();
            // 显示对应的div
            $('#div' + selectedValue).show();
        });
    })
</script>
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>