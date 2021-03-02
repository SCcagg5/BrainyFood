'use strict';
var dbConn = require('./../../config/db.config');
//Employee object create
var ProduitCheckout = function(ProduitCheckout){

    this.nomProd  = ProduitCheckout.nomProd ;
    this.descriptionProd   = ProduitCheckout.descriptionProd ;
    this.prix = ProduitCheckout.prix;
    this.image = ProduitCheckout.image;
    this.id_checkout =ProduitCheckout.id_checkout;






};
ProduitCheckout.create = function (newEmp, result) {

    console.log(newEmp)

    dbConn.query("INSERT INTO prodcheckout set ?", newEmp, function (err, res) {
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
ProduitCheckout.findByIdCheckout = function (id, result) {
    dbConn.query("Select * from prodcheckout where id_checkout = ? ", id, function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(err, null);
        }
        else{
            result(null, res);
        }
    });
};
ProduitCheckout.findAll = function (result) {
    dbConn.query("Select * from prodcheckout", function (err, res) {
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
ProduitCheckout.update = function(email, employee, result){
    dbConn.query("UPDATE prodcheckout SET nom=?,prenom=?,email=?,num_nom_rue=?,societe=?,code_postal=?,ville=?,pays=?,telephone=?,parrainage=?,capteurs=? , bodycheck=?,ayurecheck=? ,access_token_google=? WHERE email = ?", [employee.nom,employee.prenom,employee.email,employee.num_nom_rue,employee.societe,employee.code_postal,employee.ville,employee.pays,employee.telephone,employee.parrainage,employee.capteurs,employee.bodycheck,employee.ayurecheck,employee.access_token_google, email], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }else{
            result(null, res);
        }
    });
};
ProduitCheckout.delete = function(id, result){
    dbConn.query("DELETE FROM prodcheckout WHERE id = ?", [id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            result(null, res);
        }
    });
};
module.exports= ProduitCheckout;
