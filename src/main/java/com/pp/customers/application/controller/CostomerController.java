package com.pp.customers.application.controller;

import com.pp.customers.model.Customer;
import com.pp.customers.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class CostomerController {

    @Autowired
    CustomerRepository customerRepo;

    @RequestMapping(value = "customers", method = RequestMethod.GET)
    public String customers(@RequestParam(value = "name", required = false) String name, Map<String, Object> map)
    {
        /*if(name != "") {
            map.put("name", customerRepo.getName());
            return "customers";
        }*/

        map.put("customers", customerRepo.findAll());

        return "customers";
    }

    @RequestMapping(value = "customer/create", method = RequestMethod.GET)
    public String create()
    {
        return "create";
    }

    @RequestMapping(value = "customer/show/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") Integer id, ModelMap modelMap)
    {
        Customer customer = customerRepo.findById(id).orElse(null);

        modelMap.put("name", customer.getName());
        modelMap.put("email", customer.getEmail());

        return "show";
    }

    @RequestMapping(value = "customer/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Integer id, ModelMap modelMap)
    {
        Customer customer = customerRepo.findById(id).orElse(null);

        modelMap.put("id", customer.getId());
        modelMap.put("name", customer.getName());
        modelMap.put("email", customer.getEmail());

        return "edit";
    }

    @PostMapping(value = "customer/store")
    public String store(Customer customer)
    {
        customerRepo.save(customer);

        return "redirect:/customers";
    }

    /**
     * Just another way to pass data to view
     * @param name
     * @return
     */
    @RequestMapping(value = "customersmv", method = RequestMethod.GET)
    public ModelAndView customersmv(@RequestParam("name") String name)
    {
        ModelAndView mv = new ModelAndView();
        mv.addObject("customer_name", name);
        mv.setViewName("customers");
        return mv;
    }

}
