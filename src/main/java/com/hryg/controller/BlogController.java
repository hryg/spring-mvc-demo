package com.hryg.controller;

import com.hryg.model.BlogEntity;
import com.hryg.model.UserEntity;
import com.hryg.repository.BlogRepository;
import com.hryg.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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
    public String addBlogPage(ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        return "admin/addBlog";
    }

    /**
     * 添加博客
     * @return
     */
    @PostMapping(value = "/blogs/add")
    public String addBlog(@ModelAttribute("blog") BlogEntity blogEntity) {
        blogRepository.saveAndFlush(blogEntity);
        return "redirect:/admin/blogs";
    }

    /**
     * 显示博客详情
     * @param blogId
     * @param modelMap
     * @return
     */
    @GetMapping(value = "/blogs/show/{id}")
    public String showBlog(@PathVariable("id") Integer blogId, ModelMap modelMap) {
        BlogEntity blog = blogRepository.findOne(blogId);
        modelMap.addAttribute("blog", blog);
        return "admin/blogDetail";
    }

    /**
     * 更新博客的页面
     * @param blogId
     * @param modelMap
     * @return
     */
    @GetMapping(value = "/blogs/update/{id}")
    public String updateBlogPage(@PathVariable("id") Integer blogId, ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        BlogEntity blogEntity = blogRepository.findOne(blogId);
        modelMap.addAttribute("blog", blogEntity);
        return "admin/updateBlog";
    }

    /**
     * 更新博客
     * @param blogEntity
     * @return
     */
    @PostMapping(value = "/blogs/update")
    public String updateBlog(@ModelAttribute("blog") BlogEntity blogEntity) {
        blogRepository.updateUser(blogEntity.getTitle(), blogEntity.getUserByUserId().getId(), blogEntity.getContent(),
                blogEntity.getPubDate(), blogEntity.getId());
        blogRepository.flush();
        return "redirect:/admin/blogs";
    }

    /**
     * 删除博客
     * @param blogId
     * @return
     */
    @GetMapping(value = "/blogs/delete/{id}")
    public String deleteBlog(@PathVariable("id") Integer blogId) {
        blogRepository.delete(blogId);
        blogRepository.flush();
        return "redirect:/admin/blogs";
    }

}
