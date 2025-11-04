const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");
const enrollmentModel = require("../models/enrollmentModel");

const exportUsersPDF = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf")

        const doc = new PDFDocument();
        doc.pipe(res);

        //Titulo
        doc.fontSize(20).text("Relatorio de Produtos", { align: "center" });
        doc.moveDown();

        //Cabeçalho
        doc.fontSize(12).text("Id | Nome | Categoria | Preço", { underline: true });
        doc.moveDown(0.5);

        //Add dados dos produtos
        produtos.forEach((produto) => {
            doc.text(
                `${produto.id} | ${produto.nome} | ${produto.categoria} | ${produto.preco}`
            );
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF", error });
    }
};

const exportEnrollmentsPDF = async (req, res) => {
    try {
        const enrollments = await enrollmentModel.getEnrollments();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=enrollments.pdf")

        const doc = new PDFDocument();
        doc.pipe(res);

        //Titulo
        doc.fontSize(20).text("Relatorio de Vendas", { align: "center" });
        doc.moveDown();

        //Cabeçalho
        doc.fontSize(12).text("Id | Produto_id | quantidade | data_venda", { underline: true });
        doc.moveDown(0.5);

        //Add dados das vendas
        vendas.forEach((venda) => {
            doc.text(
                `${venda.id} | ${venda.produto_id} | ${venda.quantidade} | ${venda.data_venda}`
            );
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF", error });
    }
};

module.exports = { exportUsersPDF, exportEnrollmentsPDF };