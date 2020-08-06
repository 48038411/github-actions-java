package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 描述:
 *
 * @author：Guorc
 * @create 2020-08-06 9:08
 */
@RequestMapping(value = "hello")
@RestController
public class HelloController {
    @GetMapping
    public String hello(){
        return "Hello World";
    }
}
