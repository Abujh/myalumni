/*
 * ====================================================================
 * Copyright (C) 1997-2008 by Naijatek.com
 *
 * All copyright notices regarding MyAlumni MUST remain 
 * intact in the scripts and in the outputted HTML.
 * The "powered by" text/logo with a link back to
 * http://www.naijatek.com in 
 * the footer of the pages MUST remain visible when the pages
 * are viewed on the internet or intranet.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * Support can be obtained from support forums at:
 * http://www.naijatek.com/myalumni/forum
 *
 * Correspondence and Marketing Questions can be sent to:
 * info at naijatek com
 *
 * <p>Title: MyAlumni </p>
 * <p>Description: This system helps keep alive the line of communications between alumni/alumnus</p>
 * <p>Copyright: Copyright (c) 1997-2008</p>
 * <p>Company: Naijatek Solutions (http://www.naijatek.com)</p>
 * @author Folashade Adeyosoye (shardayyy@naijatek.com)
 * @version 1.0
 */
package net.naijatek.myalumni.modules.iphone.presentation.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.naijatek.myalumni.framework.extensions.MyAlumniBaseController;
import net.naijatek.myalumni.modules.common.domain.MemberVO;
import net.naijatek.myalumni.modules.common.domain.XlatDetailVO;
import net.naijatek.myalumni.modules.common.service.IMemberService;
import net.naijatek.myalumni.util.BaseConstants;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MaintainIphoneAction extends MyAlumniBaseController {

    @Autowired
	private IMemberService memService;


    private static Log logger = LogFactory.getLog(MaintainIphoneAction.class);
	private static String FIRST_NAME = "firstName";
	private static String LAST_NAME = "lastName";
	private static String SORT_TYPE = "sortType";
	
	
/*    public MaintainIphoneAction(final IMemberService memService) {
        this.memService = memService;      
    }*/

    @RequestMapping(value="/filterfn", method= RequestMethod.POST)
    public ModelAndView filterfn(@ModelAttribute("privateMessage")MemberVO memberVO, BindingResult result, SessionStatus status,
                                            HttpServletRequest request,
                                            HttpServletResponse response) throws Exception{

    	logger.info("***iPhone***: in Filter First Name...");
		
		List<MemberVO> lstMemberVO = memService.getFirstNameStartingWith(memberVO.getAlpha(), BaseConstants.BOOLEAN_NO);
		if (lstMemberVO == null){
			lstMemberVO = new ArrayList<MemberVO>();
		}
			
		setRequestObject(request, BaseConstants.LIST_OF_IPHONE_MEMBERS, lstMemberVO);
		setRequestObject(request, SORT_TYPE, FIRST_NAME);
		return new ModelAndView(BaseConstants.FWD_SUCCESS);

    }

    @RequestMapping(value="/filterln", method= RequestMethod.POST)
    public ModelAndView filterln(@ModelAttribute("privateMessage")MemberVO memberVO, BindingResult result, SessionStatus status,
                                 HttpServletRequest request,
                                 HttpServletResponse response) throws Exception{

    	logger.info("***iPhone***: in Filter Last Name...");
		
		List<MemberVO> lstMemberVO = memService.getLastNameStartingWith(memberVO.getAlpha(), BaseConstants.BOOLEAN_NO);
		if (lstMemberVO == null){
			lstMemberVO = new ArrayList<MemberVO>();
		}
				
		setRequestObject(request, BaseConstants.LIST_OF_IPHONE_MEMBERS, lstMemberVO);
		setRequestObject(request, SORT_TYPE, LAST_NAME);
		return new ModelAndView(BaseConstants.FWD_SUCCESS);
    }

    @RequestMapping(value="/viewMember", method= RequestMethod.POST)
    public ModelAndView viewMember(@ModelAttribute("privateMessage")MemberVO memberVO, BindingResult result, SessionStatus status,
                                 HttpServletRequest request,
                                 HttpServletResponse response) throws Exception{
		
		memberVO = memService.getMemberProfileByMemberId(memberVO.getMemberId());
		if (memberVO == null){
			memberVO = new MemberVO();
		}
				
		setRequestObject(request, BaseConstants.IPHONE_MEMBER_PROFILE, memberVO);
		return new ModelAndView(BaseConstants.FWD_SUCCESS);
    }



    @RequestMapping(value="/getDorms", method= RequestMethod.POST)
    public ModelAndView getDorms(@ModelAttribute("privateMessage")MemberVO memberVO, BindingResult result, SessionStatus status,
                                   HttpServletRequest request,
                                   HttpServletResponse response) throws Exception{
		
		List<XlatDetailVO> lstXlatVO = memService.getAllActiveDormitory();
		if (lstXlatVO == null){
			lstXlatVO = new ArrayList<XlatDetailVO>();
		}
				
		setRequestObject(request, BaseConstants.LIST_OF_IPHONE_DORMS, lstXlatVO);
		setRequestObject(request, SORT_TYPE, FIRST_NAME);
		return new ModelAndView(BaseConstants.FWD_SUCCESS);
    }



    @RequestMapping(value="/filterDorms", method= RequestMethod.POST)
    public ModelAndView filterDorms(@ModelAttribute("privateMessage")MemberVO memberVO, BindingResult result, SessionStatus status,
                                 HttpServletRequest request,
                                 HttpServletResponse response) throws Exception{

    	logger.info("***iPhone***: in Filter Dorms...");
		
		List<MemberVO> lstMemberVO = memService.getMembersInDorm(memberVO.getDormitoryId(), BaseConstants.BOOLEAN_NO);
		if (lstMemberVO == null){
			lstMemberVO = new ArrayList<MemberVO>();
		}
			
		setRequestObject(request, BaseConstants.LIST_OF_IPHONE_MEMBERS, lstMemberVO);
		setRequestObject(request, SORT_TYPE, FIRST_NAME);
		return new ModelAndView(BaseConstants.FWD_SUCCESS);
    }


    @RequestMapping(value="/filterGender", method= RequestMethod.POST)
    public ModelAndView filterGender(@ModelAttribute("privateMessage")MemberVO memberVO, BindingResult result, SessionStatus status,
                                    HttpServletRequest request,
                                    HttpServletResponse response) throws Exception{

    	logger.info("***iPhone***: in Filter Gender...");
		
		List<MemberVO> lstMemberVO = memService.getGenderBy(memberVO.getAlpha(), BaseConstants.BOOLEAN_NO);
		if (lstMemberVO == null){
			lstMemberVO = new ArrayList<MemberVO>();
		}
			
		setRequestObject(request, BaseConstants.LIST_OF_IPHONE_MEMBERS, lstMemberVO);
		setRequestObject(request, SORT_TYPE, FIRST_NAME);
		return new ModelAndView(BaseConstants.FWD_SUCCESS);
    } 
       
    
    
}