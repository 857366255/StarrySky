package com.starrysky.sys.web;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sdicons.json.mapper.MapperException;

import com.starrysky.base.vo.Params;
import com.starrysky.sys.service.UserService;
import com.starrysky.sys.vo.User;
import com.starrysky.tool.Transformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by wz on 2017/8/14.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 校验账号是否重复
     * @param user
     * @return
     */
    @RequestMapping(value = "check")
    @ResponseBody
    public Boolean check(User user){
        if(user.getId()==null){
            return true;
        }
        return userService.check(user);
    }
    @RequestMapping(value = "goUpdate/check")
    @ResponseBody
    public Boolean goUpdateCheck(User user){
        System.out.println("ssd");
        //if(user.getId()==null){
            return true;
       // }
        //return userService.check(user);
    }
    /**
     * 跳转到列表页面
     * @return
     */
    @RequestMapping(value="/goList",method= RequestMethod.GET)
    public String goList(Map<String, Object> map,String message,User user){
        map.put("message", message);
        map.put("user", user);
        return "user-list";
    }

    /**
     * 跳转到创建页面
     * @param map
     * @return
     */
    @RequestMapping(value="/goCreate",method= RequestMethod.GET)
    public String goCreate(Map<String, Object> map,String message){
        map.put("message", message);
        map.put("user", new User());
        return "user-create";
    }

    /**
     * 修改
     * @param user
     * @param result
     * @return
     */
    @RequestMapping(value="/goUpdate/doCreate", method=RequestMethod.PUT)
    //@RequestMapping(value="/goUpdate/doCreate")
    public String doUpdate(User user ,Errors result,RedirectAttributesModelMap map){
        if(result.getErrorCount() > 0){
            //若验证出错, 则转向定制的页面
            return "user-create";
        }
        userService.doUpdate(user);
        map.put("message", "您已成功修改这条这条信息");
        return "redirect:/user/goList";
    }

    /**
     * 跳转到修改页面
     * @param id
     * @param map
     * @return
     */
    @RequestMapping(value="/goUpdate/{id}",method= RequestMethod.GET)
    public String goUpdate(@PathVariable("id") Integer id,Map<String, Object> map){
        map.put("user", userService.findById(id));
        return "user-create";
    }

    /**
     * 创建
     * @param user
     * @param result
     * @return
     */
    @RequestMapping(value="/doCreate", method=RequestMethod.POST)
    public String doCreate(User user, Errors result, RedirectAttributesModelMap map,@RequestParam(value="file",required=false) MultipartFile file,HttpServletRequest request){
        if(result.getErrorCount() > 0){
            //若验证出错, 则转向定制的页面
            return "user-create";
        }
        System.out.println("开始上传图片");
        //获得物理路径webapp所在路径
        String pathRoot = request.getSession().getServletContext().getRealPath("");
        String path="";
        System.out.println(file==null);
        if(file!=null && !file.isEmpty()){
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-","");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType=file.getContentType();
            //获得文件后缀名称
            String imageName=contentType.substring(contentType.indexOf("/")+1);
            path="/file-manager/images/head-portrait/"+uuid+"."+imageName;
            try {
                file.transferTo(new File(pathRoot+path));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println(path);
        System.out.println("上传结束：");
        map.put("message", "您已成功创建这条这条信息");
        userService.doCreate(user);
        return "redirect:/user/goCreate";
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping(value="/doRemove/{id}", method=RequestMethod.DELETE)
    @ResponseBody
    public void delete(@PathVariable("id") Integer id){
        System.out.println("cdsafasd");
        userService.doRemove(id);
    }

    /**
     *获得数据
     * //@param limit 页面大小
     * //@param offset 页码
     * @return @RequestParam("limit") int limit, @RequestParam("offset") int offset, @RequestParam("us")  String us,
     * @throws MapperException
     */
    @RequestMapping(value="/data", produces = "application/json; charset=utf-8" )
    @ResponseBody
    public Map<String, Object> financeApplyLogs(Params params) throws MapperException {
        Integer limit = params.getLimit();
        Integer offset = params.getOffset();
        PageHelper.startPage((limit+offset)/limit, limit);
        User user = new User();
        Transformation.mapToBean(params.getVo(),user);
        //List<User> logList = userService.findAll();
        List<User> logList = userService.findByCondition(user);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        // 取分页信息
        PageInfo<User> pageInfo = new PageInfo<User>(logList);
        resultMap.put("rows",logList);
        resultMap.put("total",pageInfo.getTotal());
        return resultMap;
    }

}
