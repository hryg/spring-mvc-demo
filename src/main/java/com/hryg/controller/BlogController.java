package com.hryg.controller;

import com.hryg.model.BlogEntity;
import com.hryg.model.UserEntity;
import com.hryg.repository.BlogRepository;
import com.hryg.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class BlogController {

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private UserRepository userRepository;

    /**
     * 显示所有博客列表
     * @param modelMap
     * @return
     */
    @GetMapping(value = "/blogs")
    public String showBlogs(ModelMap modelMap) {
        List<BlogEntity> blogList = blogRepository.findAll();
        modelMap.addAttribute("blogList", blogList);
        return "admin/blogs";
    }

    /**
     * 添加博客页面
     * @param modelMap
     * @return
     */
    @GetMapping(value = "/blogs/add")
    public String addBlog(ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        return "admin/addBlog";
    }

}
