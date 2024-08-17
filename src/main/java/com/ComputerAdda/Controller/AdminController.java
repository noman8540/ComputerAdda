package com.ComputerAdda.Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ComputerAdda.Interface.iCart;
import com.ComputerAdda.Interface.iProducts;
import com.ComputerAdda.Interface.iRegister;
import com.ComputerAdda.Main.Products;
import com.ComputerAdda.Services.ProductService;

@Controller
public class AdminController {

	
	
	@Autowired 
	iRegister ir;
	
	@Autowired
	iProducts ip;
	
	@Autowired
	iCart ic;
	
	@Autowired
	private ProductService pc;
	
	@RequestMapping("addproducts")
	public String addproducts()
	{
		return "Admin/addproducts.jsp";
	}
	
	// for data to be fetch
	
	@RequestMapping("adminhome")
	public ModelAndView home(ModelMap mp)
	{
		mp.put("obj", ip.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("Admin/adminhome.jsp");
		
		return mv;
	}
	
	
	
	// For data to be added
    @RequestMapping(value = "/additems", method = RequestMethod.POST, consumes = "multipart/form-data")
    public String addProducts(@RequestParam("name") String name, 
                              @RequestParam("image") MultipartFile image, 
                              @RequestParam("price") float price,
                              @RequestParam("sdesc") String sdesc,
                              @RequestParam("ldesc") String ldesc,
                              @RequestParam("category") String category) {
        Products p1 = new Products();
        p1.setName(name);

        // Save the uploaded file to the server
        try {
            String image_url = saveUploadedFile(image);
            p1.setImage_url(image_url);
        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }

        p1.setPrice(price);
        p1.setSdesc(sdesc);
        p1.setLdesc(ldesc);
        p1.setCategory(category);
        ip.save(p1);  // Save the product using the product repository (ip)
        return "redirect:/adminproducts";
    }

    private String saveUploadedFile(MultipartFile file) throws IOException {
        String uploadDir = "uploads/";
        Path uploadPath = Paths.get(uploadDir);

        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        String fileName = file.getOriginalFilename();
        Path filePath = uploadPath.resolve(fileName);
        Files.copy(file.getInputStream(), filePath);
        
        // Check if file already exists
        if (Files.exists(filePath)) {
            Files.delete(filePath);  // Delete existing file
        }
        
        Files.copy(file.getInputStream(), filePath);
        
        // Return the path relative to the server root
        return "/uploads/" + fileName;
    }

	//for delete the data
	@RequestMapping("delete")
	public String delete(@RequestParam("id") Integer id) {
	    pc.deleteProductAndCartItems(id);;
	    return "adminproducts";
	}
	
	
	
	
	
	@RequestMapping("adminproducts")
	public ModelAndView adminproducts(ModelMap mp) {
	    // Fetch all products and convert Iterable to List
	    Iterable<Products> iterableProducts = ip.findAll();
	    List<Products> allProducts = new ArrayList<>();
	    iterableProducts.forEach(allProducts::add);

	    // Categorize products
	    List<Products> laptopProducts = allProducts.stream()
	        .filter(p -> "Laptop".equals(p.getCategory()))
	        .collect(Collectors.toList());

	    List<Products> accessoriesProducts = allProducts.stream()
	        .filter(p -> "Accessories".equals(p.getCategory()))
	        .collect(Collectors.toList());

	    List<Products> peripheralProducts = allProducts.stream()
	        .filter(p -> "Peripheral".equals(p.getCategory()))
	        .collect(Collectors.toList());

	    // Add categorized products to the model
	    mp.put("laptopProducts", laptopProducts);
	    mp.put("accessoriesProducts", accessoriesProducts);
	    mp.put("peripheralProducts", peripheralProducts);

	    // Create and return ModelAndView
	    ModelAndView mv = new ModelAndView();
	    mv.addAllObjects(mp);
	    mv.setViewName("Admin/adminproducts.jsp");

	    return mv;
	}
	
	
	
//	for update data by admin

	@RequestMapping("update")
	public String update(int id,ModelMap mp)
	{
		Products p1 = ip.findById(id);
		
		
		mp.put("pro", p1);
		return "Admin/editproducts.jsp";
		
	
	}
	
	
//	For update the data
	@RequestMapping("editproducts")
	public String editproducts(int id, String name, String image_url, float price, String sdesc, String ldesc, String category)
	{
		Products p1 = ip.findById(id);
		
		p1.setId(id);
		p1.setName(name);
		p1.setImage_url(image_url);
		p1.setPrice(price);
		p1.setSdesc(sdesc);
		p1.setLdesc(ldesc);
		p1.setCategory(category);
		
		
		return "adminproducts";
		
	}
	
	
	@RequestMapping("admincontact")
	public String admincontact()
	{
		return "Admin/admincontact.jsp";
	}
	
	
	
}
