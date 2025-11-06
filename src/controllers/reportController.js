const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");
const courseModel = require("../models/courseModel");
const enrollmentModel = require("../models/enrollmentModel");

const exportUsersPDF = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf")

        const doc = new PDFDocument();
        doc.pipe(res);

        //Titulo
        doc.fontSize(20).text("Relatorio de Usuários", { align: "center" });
        doc.moveDown();

        const colIdX = 50;
        const colNameX = 90;
        const colRoleX = 250;
        const colEmailX = 340;

        const colNameWidth = colRoleX - colNameX - 10;      // Exemplo ~140px
        const colRoleWidth = colEmailX - colRoleX - 10;     // Exemplo ~80px
        const colEmailWidth = 250;  // Ajuste conforme necessário pelo tamanho do seu pdf

        let y = 150;

        doc.font("Helvetica-Bold").fontSize(12)
            .text("Id", colIdX, y)
            .text("Nome", colNameX, y)
            .text("Categoria", colRoleX, y)
            .text("Email", colEmailX, y);

        y += 20;
        doc.font("Helvetica").fontSize(12);

        users.forEach((user) => {
            const nameHeight = doc.heightOfString(user.full_name, { width: colNameWidth });
            const roleHeight = doc.heightOfString(user.role, { width: colRoleWidth });
            const emailHeight = doc.heightOfString(user.email, { width: colEmailWidth });
            const rowHeight = Math.max(20, nameHeight, roleHeight, emailHeight);

            doc.text(user.id, colIdX, y, { width: colNameX - colIdX - 10 });
            doc.text(user.full_name, colNameX, y, { width: colNameWidth });
            doc.text(user.role, colRoleX, y, { width: colRoleWidth });
            doc.text(user.email, colEmailX, y, { width: colEmailWidth });

            y += rowHeight;
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF", error });
    }
};

const exportEnrollmentsPDF = async (req, res) => {
    try {
        const enrollments = await enrollmentModel.getEnrollments();
        const users = await userModel.getUsers();
        const courses = await courseModel.getCourses();

        const userMap = new Map(users.map(user => [user.id, user.full_name]));
        const courseMap = new Map(courses.map(course => [course.id, course.title]));


        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=enrollments.pdf")

        const doc = new PDFDocument();
        doc.pipe(res);

        //Titulo
        doc.fontSize(20).text("Relatorio de matrículas", { align: "center" });
        doc.moveDown();

        const colIdX = 70;
        const colUserX = 140;
        const colCourseX = 300;
        const colUserWidth = colCourseX - colUserX - 10;
        const colCourseWidth = 260;
        let y = 150;

        doc.font("Helvetica-Bold").fontSize(12)
            .text("Id", colIdX, y)
            .text("Usuário", colUserX, y)
            .text("Curso", colCourseX, y);

        y += 20;
        doc.font("Helvetica").fontSize(12);

        enrollments.forEach((enrollment) => {
            const userName = userMap.get(enrollment.user_id) || enrollment.user_id;
            const courseName = courseMap.get(enrollment.course_id) || enrollment.course_id;

            // Calcule as "alturas necessárias" para cada texto
            const userHeight = doc.heightOfString(userName, { width: colUserWidth });
            const courseHeight = doc.heightOfString(courseName, { width: colCourseWidth });
            const rowHeight = Math.max(20, userHeight, courseHeight);

            doc.text(enrollment.id, colIdX, y, { width: colUserX - colIdX - 10 });
            doc.text(userName, colUserX, y, { width: colUserWidth });
            doc.text(courseName, colCourseX, y, { width: colCourseWidth });

            y += rowHeight;
        });
        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF", error });
    }
};

module.exports = { exportUsersPDF, exportEnrollmentsPDF };