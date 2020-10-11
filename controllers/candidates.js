const express = require('express');
const router = express.Router();

const Candidate = require('./../models/candidates');
const packages = require('./../models/packages');
const CandidatePackages = require('./../models/candidatePackages');
const codes = require('./../models/packagecodes');

Candidate.hasMany(CandidatePackages);
CandidatePackages.belongsTo(Candidate);
packages.hasMany(CandidatePackages)
CandidatePackages.belongsTo(packages);
packages.hasMany(codes)
codes.belongsTo(packages);

router.get('/assoc', async(req, res) => {
    await CandidatePackages.findAll({
        attributes:[]
        ,include: [
            { model:  Candidate , attributes :['id','name'] },
            { model: packages , attributes :['packageName','cost'],
                include:{
                    model: codes, attributes :['code'] ,
                }
            },
         ],
       
    })
    .then((data) => {
            res.send({ data: data });
        })
    .catch((err) => { console.log(err) })

})

module.exports = router;