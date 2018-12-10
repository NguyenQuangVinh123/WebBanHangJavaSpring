package controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.transaction.Transactional;

@Controller
@RequestMapping("dangnhap/")

public class DangNhapController {
    @GetMapping
    public String Default(){
        return "login";
    }


}
