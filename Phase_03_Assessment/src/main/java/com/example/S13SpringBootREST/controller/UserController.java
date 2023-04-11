package com.example.S13SpringBootREST.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.S13SpringBootREST.entity.Product;
import com.example.S13SpringBootREST.entity.User;
import com.example.S13SpringBootREST.repository.ProductRepository;
import com.example.S13SpringBootREST.repository.UserRepository;
import com.example.S13SpringBootREST.repository.UserService;

@Controller
@RequestMapping("")
public class UserController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private UserRepository userRepository;
    

    
    
    
    
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/login")
    public String submitLoginForm(@ModelAttribute("user") User user, Model model) {
        // Check if the username and password are valid
        User validUser = userRepository.findBynameAndPassword(user.getName(), user.getPassword());
        if (validUser != null) {
            // Redirect to the home page
            return "products";
        } else {
            // Add an error message and return to the login form
            
            model.addAttribute("error", "Invalid username or password");

            return "register";
        }
    }
    
//    
//        @GetMapping("/register")
//        public String showRegistrationForm(ModelMap model) {
//            model.addAttribute("user", new User());
//            return "register";
//        }
//
//        @PostMapping("/register")
//        public String registerUser(@ModelAttribute("user") User user, BindingResult result, Model model) {
////            if (result.hasErrors()) {
////                return "register";
////            }
////            User existingUser = (User) userService.findByNameContaining(user.getName());
////            if (existingUser != null) {
////                result.rejectValue("name", null, "There is already an account registered with that username");
////                return "register";
////            }
//            userRepository.save(user);
//            return "user-list";
//        }
   


    
   
//    @PostMapping("/register")
//    public String registerUser(@ModelAttribute("user")  User user, BindingResult result, ModelMap model) {
////        if (result.hasErrors()) {
////            return "register";
////        }
//        userrepo.save(user);
//        return "redirect:/login";
//    }

    @GetMapping("/search")
    public String searchUsers(@RequestParam("query") String query, Model model) {
        List<User> users = userService.searchUsers(query);
        model.addAttribute("users", users);
        return "user-list";
    }
}

