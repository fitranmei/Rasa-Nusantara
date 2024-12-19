const bcrypt = require('bcryptjs');
const db = require('../database');

exports.register = (req, res) => {
    console.log(req.body);

    const { name, Gambar_User, email, password, passwordConfirm } = req.body;

    db.query('SELECT email FROM users WHERE email = ?', [email], async (err, emailResults) => {
        if (err) throw err;

        if (emailResults.length > 0) { 
            return res.render('register', {
                message: 'Email already exists'
            });
        } 

        db.query('SELECT name FROM users WHERE name = ?', [name], async (err, nameResults) => {
            if (err) throw err;

            if (nameResults.length > 0) { 
                return res.render('register', {
                    message: 'Name has already been taken'
                });
            } 
            
            else if (password !== passwordConfirm) { 
                return res.render('register', {
                    message: 'Passwords do not match'
                });
            }

            else {
                let hashedPassword = await bcrypt.hash(password, 10);
                console.log(hashedPassword);

                db.query(
                    'INSERT INTO users SET ?', 
                    { name: name, Gambar_User: Gambar_User, email: email, password: hashedPassword }, 
                    (err, results) => {
                        if (err) { 
                            throw err;
                        } else {
                            console.log(results);
                            return res.render('login', {
                                message: 'User registered successfully'
                            });
                        }
                    }
                );
            }
        });
    });  
};


exports.login = (req, res) => {
    console.log(req.body);
    const input = req.body;
    
    db.query(`Select * from users where email = "${input.email}"`, async (err, results) => {
        if (err) throw err;

        if (results.length < 1) {
            console.log('Email or password is incorrect')
            return res.render('login', { message: 'Email or password is incorrect'});
        }
        const isMatch = await bcrypt.compare(input.password, results[0].password);
        if (!isMatch) {
            console.log('Email or password is incorrect')
            return res.render('login', { message: 'Password is incorrect'});
        }

        req.session.user = {
            ID_User: results[0].ID_User,
            Gambar_User: results[0].Gambar_User,
            email: results[0].email,
            name: results[0].name
        };

        console.log('Session:', req.session.user);
        console.log('Logged in successfully');
        res.redirect('/');
    });
}

exports.logout = (req, res) => {
    req.session.destroy((err) => {
        if (err) throw err;
        res.redirect('/login');
    });
};