'use strict';
var dbConn = require('./../../config/db.config');
//Prospect object create
var Prospect = function(prospect){
   this.nom=prospect.nom;
    this.prenom=prospect.prenom;
    this.email=prospect.email;
    this.telephone=prospect.telephone;
    this.ville=prospect.ville;
    this.codePostal=prospect.codePostal
    this.dateCreation=prospect.dateCreation
    this.statut=prospect.statut

};
Prospect.create = function (newEmp, result) {
    dbConn.query("INSERT INTO prospects set ?", newEmp, function (err, res) {
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
Prospect.findById = function (id, result) {
    dbConn.query("Select * from Prospect where id_Prospect = ? ", id, function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(err, null);
        }
        else{
            result(null, res);
        }
    });
};
Prospect.findAll = function (result) {
    dbConn.query("Select * from prospects", function (err, res) {
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
Prospect.update = function(id, Prospect, result){
    dbConn.query("UPDATE Prospect SET first_name=?,last_name=?,email=?,phone=?,organization=?,designation=?,salary=? WHERE id = ?", [Prospect.first_name,Prospect.last_name,Prospect.email,Prospect.phone,Prospect.organization,Prospect.designation,Prospect.salary, id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }else{
            result(null, res);
        }
    });
};
Prospect.delete = function(id, result){
    dbConn.query("DELETE FROM Prospect WHERE id_Prospect = ?", [id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            result(null, res);
        }
    });
};
module.exports= Prospect;
