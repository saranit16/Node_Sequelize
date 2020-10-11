const express = require('express');
const router = express.Router();

const Products = require('./../models/products');
const Ratings = require('./../models/productratings');
const Category = require('./../models/productcategories');
const subCategory = require('./../models/productsubcategories');

Products.hasOne(Ratings)
Ratings.belongsTo(Products);
Category.hasOne(Products)
Products.belongsTo(Category);
Category.hasOne(subCategory)
subCategory.belongsTo(Category);



router.get('/assoc', (req, res) => {

    Products.findAll({
        attributes:['id','name']
        ,include: [
            { model: Ratings,attributes:['rating'] },
            { model: Category , attributes:['categoryName'] , include: [{ model: subCategory , attributes:['subCategoryName'] }] }]
    }).then((data) => {
        res.send(data);
    })
        .catch((err) => { console.log(err) })

})

module.exports = router;