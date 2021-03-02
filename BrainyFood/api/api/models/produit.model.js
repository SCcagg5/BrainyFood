'use strict';
var dbConn = require('./../../config/db.config');
//Employee object create
var Produit = function(Produit){

    this.id_prod  = Produit.id_prod ;
    this.nomProd  = Produit.nomProd ;
    this.descriptionProd   = Produit.descriptionProd ;
    this.prix=Produit.prix;
    this.image=Produit.image






};
Produit.create = function (newEmp, result) {

    console.log(newEmp)

    dbConn.query("INSERT INTO produits set ?", newEmp, function (err, res) {
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
Produit.findById = function (id, result) {
    dbConn.query("Select * from produits where id_prod = ? ", id, function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(err, null);
        }
        else{
            result(null, res);
        }
    });
};
Produit.findAll = function (result) {
    dbConn.query("Select * from produits", function (err, res) {
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
Produit.update = function(email, employee, result){
    dbConn.query("UPDATE Produits SET nom=?,prenom=?,email=?,num_nom_rue=?,societe=?,code_postal=?,ville=?,pays=?,telephone=?,parrainage=?,capteurs=? , bodycheck=?,ayurecheck=? ,access_token_google=? WHERE email = ?", [employee.nom,employee.prenom,employee.email,employee.num_nom_rue,employee.societe,employee.code_postal,employee.ville,employee.pays,employee.telephone,employee.parrainage,employee.capteurs,employee.bodycheck,employee.ayurecheck,employee.access_token_google, email], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }else{
            result(null, res);
        }
    });
};
Produit.delete = function(id, result){
    dbConn.query("DELETE FROM Produits WHERE id_prod = ?", [id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            result(null, res);
        }
    });
};
module.exports= Produit;
