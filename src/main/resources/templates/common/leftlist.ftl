<div id="smallDiv"
     style="width: 3%; background: red; float: left; display: none;">
    <div style="text-align: center; height: 50px; padding-top: 7px;" class="green-g">
        <a href="#"><img src="images/logo_1.png"/></a>
    </div>
    <div class="list-left"
         style="width: 100%; background: rgb(34, 45, 50);">
        <div style="padding: 10px 0 20px 6px;">
            <img src="/image/${(user.imgPath)!'/timg.jpg'}"
                 style="width: 32px; height: 32px; border-radius: 50%;"/>
        </div>
        <ul class="list-group">
            <#list oneMenuAll as one>
                <#list twoMenuAll as two>
                    <#if one.menuId==two.parentId>
                        <#if two.menuUrl??>
                            <li>
                                <a href="javascript:changepath('${two.menuUrl}');"> <span
                                            class="glyphicon ${two.menuIcon}" title="${two.menuName}"></span>
                                </a>
                            </li>

                        <#else>
                            <li>
                                <a href="#"> <span
                                            class="glyphicon ${two.menuIcon}" title="${two.menuName}"></span>
                                </a>
                            </li>
                        </#if>
                    </#if>
                </#list>
            </#list>

        </ul>
    </div>
</div>
<!--把最顶上左侧的logo，栅格系统分2份-->
<div class="col-lg-2 col-md-2 smallDiv"
     style="padding: 0; margin: 0; display: block;">
    <div class="col-md-12 green-g">
        <a href="index" id="shouye" class="navbar-brand" style="padding: 8px 40px;"><img
                    src="images/logo.png"/></a>
    </div>
    <div class="col-md-12 list-left"
         style="background: #222d32; height: 845px">
        <div class="user-panel">
            <div class="pull-left">
                <img src="/image/${(user.imgPath)!'/timg.jpg'}" class="img-circle user-image-left"/>
            </div>
            <div class="pull-left info">
                <p style="color: #fff; line-height: 1.5;">
                    <span>${user.userName}</span><br> <small><span
                                class="glyphicon glyphicon-record" style="color: #00a65a;">
					</span> 在线</small>
                </p>
            </div>
        </div>
        <div class="thistable">
            <#include "/common/leftlists.ftl">
        </div>
    </div>
</div>
