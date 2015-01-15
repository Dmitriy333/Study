package by.bsu.famcs.jspservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import by.bsu.famcs.jspservlet.logic.LoginLogic;

public class LoginAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		ActionMessages errors = new ActionMessages();
		LoginForm actionForm = (LoginForm) form;
		String login = actionForm.getLogin();
		String password = actionForm.getPassword();
		
		if (login != null && password != null) {
			System.out.println(actionForm.getDate());
			if (LoginLogic.checkLogin(login, password)) {
				return mapping.findForward("success");
			} else {
				errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(
						"error.login.incorrectLoginOrPassword"));
				saveErrors(request, errors);
			}
		}
		return mapping.findForward("loginAgain");
	}
}