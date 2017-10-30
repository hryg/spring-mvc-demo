package com.hryg.controller;

import com.hryg.model.UserEntity;
import com.hryg.repository.UserRepository;
import com.sun.tracing.dtrace.ModuleAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    private UserRepository userRepository;

    /**
     * 主页
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    /**
     * 用户列表页面
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        return "admin/users";
    }

    /**
     * 添加用户页面
     * @return
     */
    @RequestMapping(value = "/admin/users/add", method = RequestMethod.GET)
    public String addUserPage() {
        return "admin/addUser";
    }

    /**
     * 添加用户 POST
     * @param userEntity
     * @return
     */
    @RequestMapping(value = "/admin/users/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") UserEntity userEntity) {
        userRepository.saveAndFlush(userEntity);
        return "redirect:/admin/users";
    }

}
