<div class="box-footer no-padding" style="margin-top: -20px;">
    <div style="padding: 5px;">
        <div id="page"
             style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
            <div style="width: 40%; float: left;">
                <div class="pageInfo" style="margin-left: 5px;">
                    共<span>${page2.totalElements}</span>条 | 每页<span>${page2.size}</span>条
                    | 共<span>${page2.totalPages}</span>页
                </div>
            </div>
            <div style="width: 60%; float: left;">
                <div class="pageOperation">
                    <!--判断是否是第一页  -->
                    <#if page2.first==true>
                        <a class="btn btn-sm btn-default no-padding tablefirst" disabled="disabled"
                           style="width: 30px; height: 20px;"> <span
                                    class="glyphicon glyphicon-backward"></span></a>
                        <a class="btn btn-sm btn-default no-padding tableup" disabled="disabled"
                           style="width: 30px; height: 20px;"> <span
                                    class="glyphicon glyphicon-triangle-left"></span></a>
                    <#else>
                        <a class="btn btn-sm btn-default no-padding tablefirst" style="width: 30px; height: 20px;">
                            <span class="glyphicon glyphicon-backward"></span></a>
                        <a class="btn btn-sm btn-default no-padding tableup" style="width: 30px; height: 20px;">
                            <span class="glyphicon glyphicon-triangle-left"></span></a>
                    </#if>
                    <a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
                        <#if (page2.number+1) gte page2.totalPages>
                            ${page2.totalPages}
                        <#else>
                            ${page2.number+1}
                        </#if>
                    </a>
                    <!--判断是否是最后一页  -->
                    <#if page2.last==true>
                        <a class="btn btn-sm btn-default no-padding tabledown" disabled="disabled"
                           style="width: 30px; height: 20px;"> <span
                                    class="glyphicon glyphicon-triangle-right"></span></a>
                        <a class="btn btn-sm btn-default no-padding tablelast" disabled="disabled"
                           style="width: 30px; height: 20px;"> <span
                                    class="glyphicon glyphicon-forward"></span></a>
                    <#else>
                        <a class="btn btn-sm btn-default no-padding tabledown" style="width: 30px; height: 20px;"> <span
                                    class="glyphicon glyphicon-triangle-right"></span></a>
                        <a class="btn btn-sm btn-default no-padding tablelast" style="width: 30px; height: 20px;"> <span
                                    class="glyphicon glyphicon-forward"></span></a>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    /* 分页插件按钮的点击事件 */
    /* url是从后台接收过来的链接，sort是记录排序规则 */
    $('.tablefirst').on('click', function () {
        if (${page2.first?string('true','false')} == false) {
            $('.thistable').load('${url2}?page=0${(sort)!''}');
        }
    });
    $('.tableup').on('click', function () {
        if (${page2.first?string('true','false')} == false) {
            $('.thistable').load('${url2}?page=${(page2.number)-1}${(sort)!''}');
        }
    });
    $('.tabledown').on('click', function () {
        if (${page2.last?string('true','false')} == false) {
            $('.thistable').load('${url2}?page=${(page2.number)+1}${(sort)!''}');
        }
    });
    $('.tablelast').on('click', function () {
        if (${page2.last?string('true','false')} == false) {
            $('.thistable').load('${url2}?page=${(page2.totalPages)-1}${(sort)!''}');
        }

    });

    /*类型、状态、时间的排序  */
    $('.thistype').on('click', function () {
        if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
            $('.thistable').load('${url2}?type=0&icon=glyphicon-triangle-top${(sort2)!''}');
        } else {
            $('.thistable').load('${url2}?type=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
        }
    });
    $('.thisstatus').on('click', function () {
        if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
            $('.thistable').load('${url2}?status=0&icon=glyphicon-triangle-top${(sort2)!''}');
        } else {
            $('.thistable').load('${url2}?status=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
        }
    });
    $('.thistime').on('click', function () {
        if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
            $('.thistable').load('${url2}?time=0&icon=glyphicon-triangle-top${(sort2)!''}');
        } else {
            $('.thistable').load('${url2}?time=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
        }
    });
    $('.thisvisit').on('click', function () {
        if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
            $('.thistable').load('${url2}?visitnum=0&icon=glyphicon-triangle-top${(sort2)!''}');
        } else {
            $('.thistable').load('${url2}?visitnum=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
        }
    });
    /* 查找 */
    $('.baseKetsubmit').on('click', function () {
        var baseKey = $('.baseKey').val();
        console.log(baseKey);
        $('.thistable').load('${url2}?baseKey=' + baseKey + '${(catalog)!''}');
    });
</script>