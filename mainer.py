import mysql.connector
from flask import Flask, render_template, request, redirect, url_for, session
from flask import flash

app = Flask(__name__)
app.secret_key = '97531'


mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "230903*Csp"
)

cursor = mydb.cursor()
cursor.execute('USE Blood_Bank')

# user data 
users = {
    'user1': {'password': 'password1'},
    'user2': {'password': 'password2'},
    'user3': {'password': 'password3'},
}

@app.route("/")
def index():
    return render_template('index.html')

@app.route("/login", methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        if username in users and users[username]['password'] == password:
            session['username'] = username
            return redirect(url_for('main'))
        else:
            flash('Invalid username or password. Please try again.', 'error')
            return render_template('login.html')
    return render_template('login.html')



@app.route("/signup", methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        if register_user(username, password):
            return redirect(url_for('login'))
        else:
            #error
            return render_template('signup.html')
        #successful signup
        return redirect(url_for('login'))
    return render_template('signup.html')

def register_user(username, password):
    if username not in users:
        users[username] = {'password': password}
        return True  
    else:
        return False  

@app.route("/main3")
def main():
    if 'username' in session:
        return render_template('main3.html')
    else:
        return redirect(url_for('login'))

def blood_ch(a,b):
    if a==b:
        return True
    if a == 'O-':
        return True
    if b == 'AB+':
        return True
    if b == 'AB-':
        if a == 'A-' or a == 'B-':
            return True
        else:
            return False
    if b == 'A+':
        if a == 'A-' or a == 'O+':
            return True
        else:
            return False
    if b == 'B+':
        if a == 'B-' or a == 'O+':
            return True
        else:
            return False
    else:
        return False

@app.route("/doctor_list",methods = ['POST','GET'])
def doctor_list():
    if  request.method == 'GET':
        cursor.execute('select d.doct_id,d.doct_name,d.age,h.hosp_name,h.city from Doctor d natural join Hospital h where d.hosp_id = h.hosp_id order by d.doct_id;')
        lis_docs = cursor.fetchall()
        return render_template('doctor-list.html',docs = lis_docs)
    else:
        cit = request.form['city_in']
        cursor.execute(f"select d.doct_id,d.doct_name,d.age,h.hosp_name,h.city from Doctor d natural join Hospital h where d.hosp_id = h.hosp_id and h.city like '%{cit}%' order by d.doct_id;")
        lis_docs = cursor.fetchall()
        return render_template('doctor-list.html',docs = lis_docs)



@app.route("/donor_list",methods = ['POST','GET'])
def donor_list():
    if request.method == 'GET':
        cursor.execute("select d.donor_id,d.donor_name,b.blood_grp from Donor d inner join Blood b where d.donor_id = b.donor_id order by donor_id;")
        dons = cursor.fetchall()
        return render_template('donor-list.html',dons = dons)
    else:
        bgrp = request.form['b_t']
        cursor.execute(f"select d.donor_id,d.donor_name,b.blood_grp from Donor d inner join Blood b where d.donor_id = b.donor_id and b.blood_grp = '{bgrp}' order by donor_id;")
        dons = cursor.fetchall()
        return render_template('donor-list.html',dons = dons)

@app.route("/new_doctor",methods = ['POST','GET'])
def new_doctor():
    if request.method == 'GET':
        return render_template('new-doctor.html')
    else:
        d_id = request.form['doctorID']
        d_name = request.form['doctorName']
        h_id = request.form['hospID']
        age_1 = request.form['age_1']
        cursor.execute(f"select * from Hospital where hosp_id = '{h_id}'")
        hosp_ex = cursor.fetchall()
        cursor.execute(f"select * from Doctor where doct_id = '{d_id}'")
        doc_ex = cursor.fetchall()
        if len(doc_ex)>0:
            return render_template('new-doctor.html',msg = 'Doctor ID already in use!')
        elif len(hosp_ex)==0:
            return render_template('new-doctor.html',msg = 'Hospital does not exist!')
        else:
            cursor.execute(f"insert into Doctor values ('{d_id}','{d_name}',{age_1},'{h_id}');")
            mydb.commit()
            return render_template('new-doctor.html',msg="New Doctor Registered")


        

@app.route("/new_donation",methods = ['POST','GET'])
def new_donation():
    if request.method == 'GET':
        return render_template('new-donation.html')
    else:
        b_id = request.form['b_id']
        don_id = request.form['don_id']
        don_name = request.form['don_name']
        don_age = request.form['don_age']
        b_type = request.form['b_type']
        org_id = request.form['org_id']
        don_date = request.form['don_date']
        cursor.execute(f"select * from Blood where blood_id = '{b_id}'")
        bld_ex = cursor.fetchall()
        cursor.execute(f"select d.donor_id,d.donor_name,d.age,b.blood_grp from Donor d inner join Blood b on d.donor_id = b.donor_id and d.donor_id = '{don_id}'")
        don_ex = cursor.fetchone()
        cursor.execute(f"select * from Organisation where org_id = '{org_id}'")
        org_ex = cursor.fetchall()
        if len(bld_ex)>0:
            return render_template('new-donation.html',msg = 'Blood ID already in use!')
        elif don_ex[1]!=don_name or int(don_ex[2])>int(don_age) or don_ex[3]!=b_type:
            return render_template('new-donation.html',msg = 'Donor information is wrong!')
        elif len(org_ex)==0:
            return render_template('new-donation.html',msg = 'Organisation does not exist!')
        else:
            if len(don_ex) == 0:
                cursor.execute(f"insert into Donor values ('{don_id}','{don_name}',{don_age});")
                mydb.commit()
            cursor.execute(f"insert into Blood values ('{b_id}','{b_type}','{don_id}',1);")
            mydb.commit()
            cursor.execute(f"insert into Donation values ('{b_id}','{don_id}','{org_id}','{don_date}');")
            mydb.commit()
            return render_template('new-donation.html',msg = 'Donation information saved!')


@app.route("/transfusion",methods = ['POST','GET'])
def transfusion():
    if request.method == 'GET':
        return render_template('transfusion.html')
    else:
        bid = request.form['bid']
        pid = request.form['pid']
        date = request.form['date']
        cursor.execute(f"select * from patient where pat_id = '{pid}'")
        pat_ex = cursor.fetchall()
        cursor.execute(f"select * from blood where blood_id = '{bid}'")
        bld_ex = cursor.fetchall()
        if len(pat_ex) == 0:
            return render_template('transfusion.html',msg='Patient does not exist!')
        elif len(bld_ex) == 0:
            return render_template('transfusion.html',msg='Blood ID not in use!')
        elif bld_ex[0][3] == 0:
            return render_template('transfusion.html',msg='Blood ID out of stock!')
        elif not blood_ch(bld_ex[0][1],pat_ex[0][5]):
            return render_template('transfusion.html',msg='Blood groups incompatable!')
        else:
            cursor.execute(f"insert into transfusion values ('{bid}','{pid}','{date}')")
            mydb.commit()
            return render_template('transfusion.html',msg='Information Updated!')

@app.route("/new_patient",methods = ['POST','GET'])
def new_patient():
    if request.method == 'GET':
        return render_template('new-patient.html')
    else:
        pid = request.form['pid']
        pname = request.form['pname']
        did = request.form['did']
        page = request.form['page']
        pbg = request.form['pbg']
        cursor.execute(f"select * from patient where pat_id = '{pid}'")
        pat_ex = cursor.fetchall()
        cursor.execute(f"select * from doctor where doct_id = '{did}'")
        doc_ex = cursor.fetchall()
        if len(pat_ex)>0:
            return render_template('new-patient.html',msg = 'Patient ID already in use!')
        elif len(doc_ex)==0:
            return render_template('new-patient.html',msg = 'Doctor ID does not exist!')
        else:
            print(f"insert into patient values ('{pid}','{did}','{pname}',{page},1,{pbg});")
            cursor.execute(f"insert into patient values ('{pid}','{did}','{pname}',{page},1,'{pbg}');")
            mydb.commit()
            return render_template('new-patient.html',msg = 'Information Saved!')

@app.route("/blood_request",methods = ['POST','GET'])
def blood_request():
    global cursor
    if request.method == 'GET':
        cursor.callproc("blood_req3",['AB+',])
        cursor.execute('select * from foo')
        bloods = cursor.fetchall()
        #bloods = cursor.fetchall()
        return render_template('blood-request.html',bloods = bloods)
    else:
        req_g = request.form['req_g']
        print(req_g)
        #cursor.execute('drop table if exists foo')
        cursor.callproc("blood_req3",[req_g,])
        cursor.execute('select * from foo')
        bloods = cursor.fetchall()
        #bloods = cursor.fetchall()
        #cursor.nextset()
        #mydb.commit()
        return render_template('blood-request.html',bloods = bloods)
    

@app.route("/patient_list",methods = ['POST','GET'])
def patient_list():
    if request.method == 'GET':
        cursor.execute("select p.pat_id,p.pat_name,p.blood_grp,p.age,d.doct_name,h.hosp_name from patient p inner join doctor d on p.doct_id = d.doct_id and p.in_patient = 1  inner join hospital h on h.hosp_id = d.hosp_id order by p.pat_id;")
        pats = cursor.fetchall()
        cursor.execute("select * from hospital")
        hosps = cursor.fetchall()
        return render_template('patient-list.html',pats = pats,hosps = hosps)
    else:
        hosp_n = request.form['hosp_n']
        print(hosp_n)
        cursor.execute(f"select p.pat_id,p.pat_name,p.blood_grp,p.age,d.doct_name,h.hosp_name from patient p inner join doctor d on p.doct_id = d.doct_id and p.in_patient = 1 inner join hospital h on h.hosp_id = d.hosp_id and h.hosp_name = '{hosp_n}' order by p.pat_id;")
        pats = cursor.fetchall()
        cursor.execute("select * from hospital")
        hosps = cursor.fetchall()
        return render_template('patient-list.html',pats = pats,hosps = hosps)

@app.route("/certificate",methods = ['POST','GET'])
def certificate():
    if request.method == 'GET':
        return render_template('certificate.html')

@app.route("/certificate_view",methods = ['POST','GET'])
def certificate_view():
    if request.method == 'POST':
        did = request.form['did']
        cursor.execute(f"select * from donor where donor_id = '{did}'")
        don_ex = cursor.fetchall()
        if len(don_ex) == 0:
            return render_template('certificate_view.html',erm = 'Donor ID does not exist!')
        else:
            cursor.execute(f"select d.donor_id,d.donor_name,n.date_of_donation,o.org_name from donor d inner join donation n on d.donor_id = n.donor_id and d.donor_id = '{did}' inner join organisation o on n.org_id = o.org_id order by n.date_of_donation desc")
            dons_id = cursor.fetchall()
            dons = dons_id[0]
            cursor.execute(f"select d.donor_id,count(*) from donor d inner join donation n on d.donor_id = n.donor_id and d.donor_id = '{did}' group by d.donor_id;")
            tups = cursor.fetchone()
            return render_template('certificate_view.html',tups = tups,dons = dons)

@app.route("/organisations")
def organisations():
    cursor.execute('select * from organisation')
    orgs = cursor.fetchall()
    return render_template('organization.html',orgs= orgs)


if __name__ == '__main__':
    app.run(debug = True)