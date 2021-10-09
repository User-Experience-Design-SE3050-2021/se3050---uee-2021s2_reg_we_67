const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const schema = new Schema({
    
    email: { type: String, unique: true, required: true },
    username: { type: String, required: true },
    hash: { type: String, required: true },
    createdDate: { type: Date, default: Date.now }
});

schema.set('toJSON', {
    virtuals: true,
    versionKey: false,
    transform: function (doc, ret) {
        delete ret._id;
        delete ret.hash;
    }
});

module.exports = mongoose.model('User', schema);