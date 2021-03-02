'use strict';
module.exports = function (app) {
    var api = require('../controllers/apiController');
    var path = require('path');

    const multer = require("multer");
    const dirPath = path.join(__dirname, '/product_images');

    const upload = multer({ dest:dirPath })


    app.route("/api/addOrder")
        .post(api.addOrder);
    app.route("/api/getOrders")
        .get(api.getAllOrders);
    app.route("/api/getCustomers")
        .get(api.getCustomers);
    app.route("/api/getAllProducts")
        .get(api.getAllProductsLabelVin);


    app.route('/api/createProspect')
        .post(api.createProspect)



    app.route("/api/getProspects")
        .get(api.getProspects);


    app.route('/api/sendCustomMailWithUrl')
        .post(api.sendCustomMailWithUrl)

    app.route('/api/sendNlmMailWithUrl')
        .post(api.sendNLMailWithUrl)

    app.route('/api/sendNlmMailWithUrl2')
        .post(api.sendNLMailWithUrl2)

    app.route('/api/sendNewsLetterMail')
        .post(api.sendNewsLetterMail)



    app.route('/api/recettesall')
        .get(api.findAll)

    app.route('/api/recetteCreate')
        .post(api.createRecette)
    app.route('/api/PatientCreate')
        .post(api.createPatient)

    app.route('/api/PatientByEmail/:id')
        .get(api.getPatientByEmail)
    app.route('/api/PatientById/:id')
        .get(api.getPatientById)
    app.route('/api/deletePatient/:id')


        .get(api.deletePatient)
    app.route('/api/PatientUpdate')
        .post(api.updatePatient)

    app.route('/api/Patients')
        .get(api.getPatients)


    app.route('/api/recetteByID/:id')
        .get(api.findById)

    app.route('/api/ingredientsCreate')
        .post(api.createIngredient)


    app.route('/api/ingredients/:id')
        .get(api.getIngredients)


    app.route('/api/questionsCreate')
        .post(api.createQuestions)
    app.route('/api/BodyCheckCreate')
        .post(api.createBodyCheck)

    app.route('/api/miniceurCreate')
        .post(api.createMiniceur)

    app.route('/api/sportCreate')
        .post(api.createSport)
    app.route('/api/bienetreCreate')
        .post(api.createBienEtre)

    app.route('/api/question/:id')
        .get(api.getQuestionData)

    app.route('/api/bodyCheck/:id')
        .get(api.getBodyCheckData)

    app.route('/api/questionbyEmail/:id')
        .get(api.getQuestionByEmail)
    app.route('/api/BodyCheckByEmail/:id')
        .get(api.getBodyCheckByEmail)


    app.route('/api/generateDoc')
        .get(api.generateDoc)

    app.route('/api/getWord')
        .post(api.wordQuill)

    app.route('/api/uploadImageProduct')
        .post(upload.single('file'),api.uploadImageProduct)

    app.route('/api/uploadImageNewsletter')
        .post(upload.single('file'),api.uploadImageNewsletter)

    app.route('/api/uploadHtmlFile')
        .post(upload.single('file'),api.uploadHtmlFile)


    app.route('/api/getImageProduct/:filename')
        .get(api.getProductImage)

    app.route('/api/getImageNewsletter/:filename')
        .get(api.getNewsletterImage)



    app.route('/api/ProduitCreate')
        .post(api.createProduit)

    app.route('/api/Newsletter_create')
        .post(api.createNewsletter)
    app.route('/api/newsletters')
        .get(api.getNewsletters)

    app.route('/api/produits')
        .get(api.getProduits)

    app.route('/api/ProdtuitById/:id')
        .get(api.getProduitById)


    app.route('/api/Stripe')
        .post(api.Stripepayment)

    app.route('/api/CheckoutCreate')
        .post(api.createCheckout)

    app.route('/api/CheckoutProdCreate')
        .post(api.createProduitCheckout)

    app.route('/api/Checkout/:id')
        .get(api.getCheckout)

};
