<#include "/common/commoncss.ftl">
<style type="text/css">
    .table-container {
        max-height: 300px; /* 或您需要的任何高度 */
        overflow: auto;
        display: block;
        position: relative;
        width: 100%; /* 或具体宽度 */
    }

    .table {
        width: 100%;
        border-collapse: collapse;
    }

    .table th,
    .table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .table th:first-child,
    .table td:first-child {
        position: sticky;
        left: 0;
        background-color: #fff; /* 或您需要的背景色 */
        z-index: 10;
    }

    .table thead th {
        position: sticky;
        top: 0;
        background-color: #f9f9f9; /* 或您需要的表头背景色 */
        z-index: 20;
    }
</style>

<div class="row" style="padding-top: 10px;">
    <div class="col-md-2">
        <h1 style="font-size: 24px; margin: 0;" class="">三单一览</h1>
    </div>
    <div class="col-md-10 text-right">
        <a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
        <a disabled="disabled">三单一览</a>
    </div>
</div>

<div class="row" style="padding-top: 15px;">
    <div class="col-md-12">
        <!--id="container"-->
        <div class="bgc-w box box-primary">
            <!--盒子头-->
            <div class="box-header">
                <h3 class="box-title">
                    <form class="fileuploadform" action="readthreebookAll" method="post" enctype="multipart/form-data">
                        <div class="btn btn-primary uploadfile"
                             style="position: relative; overflow: hidden;width: 100%; margin-bottom: 20px;">
                            <i class="glyphicon glyphicon-open"></i>三单文件导入
                            <input type="file" name="file"
                                   style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;"/>
                        </div>
                    </form>
                    <a onclick="downloadFile()" class="label label-success" style="padding: 5px;">
                        <span class="glyphicon glyphicon-export"></span> 导出
                    </a>

                    <a href="threebookmanage" class="label label-success" style="padding: 5px;margin-left:5px;">
                        <span class="glyphicon glyphicon-refresh"></span> 刷新
                    </a>
                </h3>
                <div class="box-tools">
                    <div class="input-group" style="width: 150px;">
                        <input type="text" class="form-control input-sm baseKey"
                               placeholder="按名称查找"/>
                        <div class="input-group-btn">
                            <a class="btn btn-sm btn-default baseKeySubmit"><span
                                        class="glyphicon glyphicon-search"></span></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--盒子身体-->
            <div class="box-body no-padding thistable">
                <#include "threebooktable.ftl">
            </div>
            <!--盒子尾-->
        </div>
    </div>
</div>
<script>
    $('.baseKeySubmit').on('click', function () {
        var search = $('.baseKey').val();
        $('.thistable').load("threebooktable?search=" + search);
    });
    // $('.threebookexport').on('click',function (){
    // 	var search=$('.baseKey').val();
    // 	$('.thistable').load("threebookexport?search="+search);
    // })
    function downloadFile() {
        var search = $('.baseKey').val();
        window.location.href = '/threebookexport?search=' + search
    }

    $(".uploadfile input").bind("change", function () {
        $(".fileuploadform").submit();
    });

</script>