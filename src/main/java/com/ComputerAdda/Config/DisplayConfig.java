package com.ComputerAdda.Config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class DisplayConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Maps URL paths starting with "/uploads/" to files in the "uploads/" directory
        registry.addResourceHandler("/uploads/**")
                .addResourceLocations("file:uploads/");
    }
}
