
# importing the necessary dependencies
from flask import Flask, render_template, request,jsonify
from flask_cors import CORS,cross_origin
import pickle

application = Flask(__name__) # initializing a flask app

@application.route('/', methods=['GET'])  # route to display the home page
@cross_origin()
def homePage():
    return render_template("index.html")

@application.route('/predict', methods=['POST', 'GET']) # route to show the predictions in a web UI
@cross_origin()
def index():
    if request.method == 'POST':
        try:
            #  reading the inputs given by the user
            rate_marriage=float(request.form['rate_marriage'])
            age = float(request.form['age'])
            yrs_married = float(request.form['yrs_married'])
            children = float(request.form['children'])
            religious = float(request.form['religious'])
            educ = float(request.form['educ'])
            occupation = float(request.form['occupation'])
            occupation_husb = float(request.form['occupation_husb'])

            filename = 'modelForPrediction.sav'
            loaded_model = pickle.load(open(filename, 'rb')) # loading the model file from the storage
            filename2 = 'sandardScalar.sav'
            scalar = pickle.load(open(filename2, 'rb'))
            X=scalar.transform([[rate_marriage,age,yrs_married,children,religious,educ,occupation,occupation_husb]])
            # predictions using the loaded model file
            prediction=loaded_model.predict(X)
            print('prediction is', prediction)
            # showing the prediction results in a UI
            if prediction ==0:
                prediction="NO"
            elif prediction==1:
                prediction="YES"
            return render_template('results.html',prediction=prediction)
        except Exception as e:
            print('The Exception message is: ',e)
            return 'something is wrong'
    # return render_template('results.html')
    else:
        return render_template('index.html')



if __name__ == "__main__":
    #app.run(host='127.0.0.1', port=8001, debug=True)
	application.run(debug=True) # running the app