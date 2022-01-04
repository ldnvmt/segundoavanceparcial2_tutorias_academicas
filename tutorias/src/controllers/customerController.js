const controller = {};

controller.list = (req, res) =>{
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM tutoria', (err, tutorias) => {
            if (err){
                res.json(err);
            }
            res.render('customers', {
                data: tutorias
            });
        });
    });
};

/*------Insertas Datos de los FORMULARIOS-----*/
controller.save = (req, res) => {
    const data = req.body;

    req.getConnection((err, conn) => {
        conn.query('INSERT INTO tutoria set ?', [data], (err, tutorias) =>{
        });
    })
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO solicitar_tutoria set ?', [data], (err, tutorias) =>{
        });
    })
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO registro_docente set ?', [data], (err, tutorias) =>{
        });
    })
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO contacto_docente set ?', [data], (err, tutorias) =>{
        });
    })
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO registro_estudiante set ?', [data], (err, tutorias) =>{
        });
    })
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO contacto_estudiante set ?', [data], (err, tutorias) =>{
        });
    })
};

controller.edit = (req, res) => {
    const { id_tutoria } = req.params;

    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM tutoria WHERE id_tutoria = ?', [id_tutoria], (err, tutorias) => {
            res.render('customer_edit', {
                data: tutorias[0]
            });
        });
    });
};

controller.update = (req, res) => {
    const { id_tutoria } = req.params;
    const newTutoria = req.body;
    req.getConnection((err, conn) => {
        conn.query('UPDATE tutoria set ? WHERE id_tutoria = ?', [newTutoria, id_tutoria], (err, rows) => {
            res.redirect('/');
        });
    });
};

controller.delete = (req, res) => {
    const { id_tutoria } = req.params;
    req.getConnection((err, conn) => {
        conn.query('DELETE FROM tutoria WHERE id_tutoria = ?', [id_tutoria], (err, rows) => {
            res.redirect('/');
        });
    })
};
module.exports = controller;