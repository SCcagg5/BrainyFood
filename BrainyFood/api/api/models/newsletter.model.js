'use strict';
var dbConn = require('./../../config/db.config');
//Employee object create
var Newsletter = function(newsletter){

    this.id  = newsletter.id ;
    this.name = newsletter.name ;
   this.file=newsletter.file;
   this.image=newsletter.image






};
Newsletter.create = function (newEmp, result) {

    console.log(newEmp)

    dbConn.query("INSERT INTO newsletters set ?", newEmp, function (err, res) {
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
Newsletter.findById = function (id, result) {
    dbConn.query("Select * from newsletters where id = ? ", id, function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(err, null);
        }
        else{
            result(null, res);
        }
    });
};
Newsletter.findAll = function (result) {
    dbConn.query("Select * from newsletters", function (err, res) {
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
/*Newsletter.update = function(email, employee, result){
    dbConn.query("UPDATE Newsletters SET nom=?,prenom=?,email=?,num_nom_rue=?,societe=?,code_postal=?,ville=?,pays=?,telephone=?,parrainage=?,capteurs=? , bodycheck=?,ayurecheck=? ,access_token_google=? WHERE email = ?", [employee.nom,employee.prenom,employee.email,employee.num_nom_rue,employee.societe,employee.code_postal,employee.ville,employee.pays,employee.telephone,employee.parrainage,employee.capteurs,employee.bodycheck,employee.ayurecheck,employee.access_token_google, email], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }else{
            result(null, res);
        }
    });
};*/
Newsletter.delete = function(id, result){
    dbConn.query("DELETE FROM newsletters WHERE id = ?", [id], function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            result(null, res);
        }
    });
};
module.exports= Newsletter;
