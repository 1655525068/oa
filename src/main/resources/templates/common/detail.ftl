<style>
    .table-r {
        overflow: scroll;
        height: 245px;
    }
</style>
<!-- 细化弹窗-->
<div class="modal fade " id="myModalDetail" tabindex="-1">

    <!--第二步，窗口声明-->
    <div class="modal-dialog modal-lg ">
        <!--第三步、内容区的声明-->
        <div class="modal-content" style="background: #F9F9F9;">
            <div class="modal-1">

                <div class="modal-2">

                    <div class="modal-header" style="margin:10px;margin-top: -20px;">
                        <button class="close" data-dismiss="modal"
                                style="display: block;margin: -52px -78px 0 0;;border-radius: 60%;">
                            <span class="glyphicon glyphicon-remove-circle" style="color:white;font-size: 30px;"></span>
                        </button>
                        <div class="row">
                            <div class="col-xs-12" style="height:30px;margin:10px 0px;">

                                <h4 style="float:left;">
                                    <a class="btn btn-success glyphicon glyphicon-plus btn-sm" href="##"
                                       onclick="addvaluedetail()"> 新增文件编码</a>
                                </h4>

                                <div class="input-group">
                                    <input type="text" class="form-control input-sm pull-right cha2"
                                           placeholder="查找..."/>
                                    <div class="input-group-btn chazhao2" style="top:-1px;">
                                        <a class="btn btn-sm btn-default glyphicon glyphicon-search"
                                           style="height: 30px;" href="##"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-body thisdetailtable" style="margin:10px;">
                        <#include "/common/details.ftl">
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script>
    $(function () {

        /* 分页插件按钮的点击事件 */

        $('.baseKetsubmit').on('click', function () {
            var baseKey = $('.baseKey').val();
            $('#myModalDetail .thisdetailtable').load('names?baseKey=baseKey');
        });
        $(".chazhao2").click(function () {
            var $qufen = $(".mi").text();
            var con = $(".cha2").val();
            $("#myModalDetail .thisdetailtable").load("details", {title: con, qufen: $qufen});
        });
    });

    function addvaluedetail() {

        var id_array = new Array();
        var id2 = new Array();
        $('input[name="id_detail"]:checked').each(function () {
            var $name = $(this).parents(".col-xs-1").siblings(".nna").text();
            id_array.push($name);//向数组中添加元素
            var idstr = id_array.join(';');//将数组元素连接起来以构建一个字符串
            $("#detail_list").val(idstr);
            $(".detail_list").val(idstr);
            $(".detail_list").change();
            var $name2 = $(this).parents(".col-xs-1").siblings(".nnb").text();
            id2.push($name2);//向数组中添加元素
            var idstr2 = id2.join(';');//将数组元素连接起来以构建一个字符串
            $("#detail_list2").val(idstr2);
            $(".detail_list2").val(idstr2);
            $(".detail_list2").change();
        })

        $(".fade").css("display", "none");

    }

</script>