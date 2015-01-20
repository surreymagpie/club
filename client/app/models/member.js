import DS from 'ember-data';

export default DS.Model.extend({
    firstName: DS.attr('string'),
    lastName: DS.attr('string'),
    dob: DS.attr('date'),
    gender: DS.attr('string'),

    fullName: function(){
        return this.get('firstName') + ' ' + this.get('lastName');
    }.property('firstName', 'lastName'),

    age: function() {
        var year = 365.23*24*3600*1000, // milliseconds in a year
            now  = new Date(), // today
            dob = this.get('dob'); // date of birth

        return Math.floor((now - dob) / year);
    }.property('dob'),

    ageCategory: function() {
        var age = this.get('age'),
            gender = this.get('gender');

        // Women are saved in database as 'female' but generally classified as 'senior women'
        if (gender === 'F') {
            gender = 'W';
        }

        if ( age < 18 ) {
            return 'J' + gender;
        }
        else if ( age >= 35 && gender === 'W' || age >= 40 && gender === 'M') {
            var cat = (Math.floor(age / 5)) * 5;
            return 'V' + gender + cat;
        }
        else {
            return 'S' + gender;
        }
    }.property('age', 'gender')
});
