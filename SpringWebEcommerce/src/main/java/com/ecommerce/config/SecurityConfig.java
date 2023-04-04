package com.ecommerce.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.ecommerce.Service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
    private UserDetailsServiceImpl userDetailsService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().disable();
		
		http.authorizeRequests().antMatchers(HttpMethod.OPTIONS, "/**", "/", "/home", "/register", "/login", "/registerhandle").permitAll();

		http.authorizeRequests().antMatchers("/bill", "/cart").access("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')");

		http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");
		
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
		
		
		http.authorizeRequests().and().formLogin()
		.loginProcessingUrl("/j_spring_security_check")
		.loginPage("/login")
		.defaultSuccessUrl("/home?success")
		.failureUrl("/login?error")
		.usernameParameter("username")
		.passwordParameter("password")
		.and().logout().logoutUrl("/logout").logoutSuccessUrl("/login?logout");
		
		
//		http.csrf().disable()
//		.authorizeRequests()
//		.antMatchers(HttpMethod.OPTIONS, "/**").permitAll() // Allow pre-flight CORS requests
//		.antMatchers("/", "/home", "/register").permitAll()
//		.antMatchers("/admin").hasRole("1")
//		.anyRequest().authenticated()
//		.and().formLogin()
//		.loginPage("/login").permitAll()
//		.defaultSuccessUrl("/home")
//		.failureUrl("/login?error")
//		.loginProcessingUrl("/j_spring_security_check")
//		.and()
//		.logout()
//		.logoutSuccessUrl("/login?logout"); 
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		String name = auth.getName();
	}
	


//	 @Bean
//	    public BCryptPasswordEncoder passwordEncoder() {
//	        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//	        return bCryptPasswordEncoder;
//	    }

	
	@Autowired
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication()
//		.withUser("1111111111").password("123").authorities("1").roles("1");
//		
//		auth.inMemoryAuthentication()
//		.withUser("0000000000").password("123").authorities("0").roles("0");
		
		auth.userDetailsService(userDetailsService);
	}

}
