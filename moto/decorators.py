from django.shortcuts import redirect

def allowed_users_moto_edit(allowed_roles=[],view_redir=None):
	def decorator(view_func):
		def wrapper_func(request, *args, **kwargs):

			group = None
			if request.user.groups.exists():
				group = request.user.groups.all()[0].name

			elif group in allowed_roles:
				return view_func(request, *args, **kwargs)
			return redirect(view_redir)
		return wrapper_func
	return decorator