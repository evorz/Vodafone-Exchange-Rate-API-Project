from flask import Flask, render_template, request, flash, redirect, url_for
from flask_mysqldb import MySQL
import requests
import json

app = Flask(__name__)

app.secret_key = "doviz_kurlari"

app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "doviz_kurlari"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)

response = requests.get('https://api.genelpara.com/embed/para-birimleri.json')


@app.route("/")
def get_exchange_rates():
    data = json.loads(response.text)
    return render_template('index.html', data=data)


@app.route("/save")
def save_exchange_rates():
    data = json.loads(response.text)
    
    for currency,rate in data.items():
        alis = rate["alis"]
        satis = rate["satis"]
        degisim = rate["degisim"]
        para = currency
        
        
        cursor = mysql.connection.cursor()
        
        #Tüm kurların olduğu tabloya kaydeder
        cursor.execute("INSERT INTO tumkurlar (para,alis,satis,degisim) VALUES (%s, %s, %s, %s)", (currency, alis, satis, degisim))
        mysql.connection.commit()
        
        cursor.close()
    
    flash("Veri başarıyla kaydedildi!","success")
    return redirect(url_for("get_exchange_rates"))  
        
      

if __name__ == '__main__':
    app.run(debug=True)
