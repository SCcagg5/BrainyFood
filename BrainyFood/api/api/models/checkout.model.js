'use strict';
var dbConn = require('./../../config/db.config');
//Checkout object create
var Checkout = function(checkout){
   this.email_user=checkout.email_user
    this.create_at=checkout.create_at

};
Checkout.create = function (newEmp, result) {
    dbConn.query("INSERT INTO checkout set ?", newEmp, function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(err, null);
        }
        else{
            console.log(res.insertId);
            result(null, res.insertId);
        }
    });
};
Checkout.findById = function (id, result) {
    dbConn.query("Select * from checkout where id_checkout = ? ", id, function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(err, null);
        }
        else{
            result(null, res);
        }
    });
};
Checkout.findAll = function (result) {
    dbConn.query("Select * from checkout", function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            console.log('recettes : ', res);
            result(null, res);
        }
    });
};
Checkout.update = function(id, Checkout, result){
    dbConn.query("UPDATE checkout SET first_name=?,last_name=?,email=?,phone=?,organization=?,designation=?,salary=? WHERE id = ?", [Checkout.first_name,Checkout.last_name,Checkout.email,Checkout.phone,Checkout.organization,Checkout.designation,Checkout.salary, id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }else{
            result(null, res);
        }
    });
};
Checkout.delete = function(id, result){
    dbConn.query("DELETE FROM checkout WHERE id_checkout = ?", [id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            result(null, res);
        }
    });
};
module.exports= Checkout;
