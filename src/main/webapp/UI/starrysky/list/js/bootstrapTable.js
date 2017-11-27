/**
 * Created by Administrator on 2017/11/26.
 */
var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function (params) {
        $('#listTable').bootstrapTable({
            url: "../data"+params.url,//'/Interface/GetData',         //请求后台的URL（*）
            method: params.method,//'get',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: params.pageNumber,//1,                       //初始化加载第一页，默认第一页
            pageSize: params.pageSize,//10,                       //每页的记录行数（*）
            pageList: params.pageList,//[10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            contentType: "application/x-www-form-urlencoded",
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 700,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: params.uniqueId,//"no",                     //每一行的唯一标识，一般为主键列
            showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            columns: params.columns/*,[
                {
                    field: 'ID',
                    title: 'ID'
                }, {
                    field: 'Name',
                    title: '名字'
                }, {
                    field: 'Sex',
                    title: '性别'
                },
                {
                    field: 'operate',
                    title: '操作',
                    formatter: operateFormatter //自定义方法，添加操作按钮
                },
            ],*/
           /* rowStyle: function (row, index) {
                var classesArr = ['success', 'info'];
                var strclass = "";
                if (index % 2 === 0) {//偶数行
                    strclass = classesArr[0];
                } else {//奇数行
                    strclass = classesArr[1];
                }
                return { classes: strclass };
            }//隔行变色*/
        });

    };
    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset:params.offset
        };
        return temp;
    };
    return oTableInit;
};


function operateFormatter(value, row, index) {//赋予的参数
    return [
        '<button type="button" class="ck btn btn-outline btn-default btn-sm"><i class="fa fa-wrench" aria-hidden="true"></i>查看明细</button>',
        '<button type="button" class="update btn btn-outline btn-default btn-sm" data-toggle="modal" data-target="#update"><i class="fa fa-wrench" aria-hidden="true"></i>修改</button>',
        '<button type="button" class="remove btn btn-outline btn-default btn-sm"><i class="fa fa-trash-o" aria-hidden="true"></i>删除</button>'
    ].join('');
}



