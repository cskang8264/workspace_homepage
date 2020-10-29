package mingo.smartstore.controller;

import org.springframework.web.bind.annotation.RestController;

import ch.qos.logback.classic.Logger;

@RestController
public class AddrController {
	
		private final Logger log = (Logger) org.slf4j.LoggerFactory.getLogger(AddrController.class);
		
		/**
	     * CommonHttpRequest + DocumentBuilder XML Parse
	     * @param request
	     * @param response
	     * @param map
	     * @return
	     * @throws Exception
	     */
	    @RequestMapping(value = "/http", method = RequestMethod.GET)
	    public Result<Address> httpGet(
	            HttpServletRequest request,
	            HttpServletResponse response,
	            @RequestParam Map<String, Object> map
	            ) throws Exception {
	        ParseService parseService = new XmlParseServiceImpl();
	        Response<Address> context = new Response<Address>();
	        return context.getResponse(parseService, map);
	    }




}
