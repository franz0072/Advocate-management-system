from flask import *
from database import*

clerk=Blueprint("clerk",__name__)

@clerk.route("/clerk_home")
def clerk_home():
	if not session.get("lid") is None:
		return render_template("clerk_home.html")
	else:
		return redirect(url_for("public.login"))
	
# @clerk.route("/clerk_view_cases",methods=['get','post'])
# def clerk_view_cases():
# 	if not session.get("lid") is None:
# 		data={}
# 		qry="select * from cases where status='approved'"
# 		s=select(qry)
# 		data['cases']=s
		
# 	else:
# 		return redirect(url_for("public.login"))
	

@clerk.route("/clerk_hearing",methods=['get','post'])
def clerk_hearing():
	if not session.get("lid") is None:
		cid=request.args['cid']
		data={}
		if 'submit' in request.form:
			note=request.form['note']
			hdate=request.form['hdate']
			qry="select * from hearing where case_id='%s'"%(cid)
			res=select(qry)
			if res:
				hid=res[0]['hearing_id']
				q="update hearing set notes='%s',date_time=now(),hearing_date='%s' where hearing_id='%s'"%(note,hdate,hid)
				update(q)
				flash("updated")
				return redirect(url_for('clerk.clerk_view_cases',cid=cid))
			else:
				w="insert into hearing values(null,'%s','%s',now(),'%s','%s')"%(session['clerk'],note,cid,hdate)
				insert(w)
				flash("added")
				return redirect(url_for('clerk.clerk_view_cases',cid=cid))
		else:	
			return render_template("clerk_hearing.html")
	else:
		return redirect(url_for("public.login"))

	
@clerk.route("/clerk_view_registered_users",methods=['get','post'])
def clerk_view_registered_users():
	if not session.get("lid") is None:
		data={}
		q="select *,concat(first_name,' ',last_name) as fullname from client"
		data['view']=select(q)
		return render_template("clerk_view_registered_users.html",data=data)
	else:
		return redirect(url_for("public.login"))
@clerk.route("/clerk_view_cases",methods=['get','post'])
def clerk_view_cases():
	if not session.get("lid") is None:
		data={}
		if "cid" in request.args:
			cid=request.args['cid']
		if "id" in request.args:
			cid=request.args['id']
		q="SELECT *,CONCAT(first_name,' ',last_name) as fullname,cases.description as des,cases.phone as cp,cases.pincode as cpin,case_types.description as csd FROM cases INNER JOIN case_types USING(type_id) inner join client using(client_id) where client_id='%s'"%(cid)
		print(q)
		data['view']=select(q)
		return render_template("clerk_view_cases.html",data=data)
	else:
		return redirect(url_for("public.login"))


@clerk.route("/clerk_view_payment",methods=['get','post'])
def clerk_view_payment():
	data={}
	q="SELECT *,CONCAT (client.`first_name`,' ',client.`last_name`)AS clientname,CONCAT (advocates.`first_name`,' ',advocates.`last_name`)AS advname FROM payment INNER JOIN `client` ON client.client_id=payment.user_id INNER JOIN advocates USING (adv_id)"
	data['view']=select(q)

	return render_template("clerk_view_payment.html",data=data)