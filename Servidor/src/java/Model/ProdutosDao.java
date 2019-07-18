/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author Marcelo
 */
public class ProdutosDao {

    private static ProdutosDao instance;

    public static ProdutosDao getInstance() {
        MySQLDAO.getConnection();
        if (instance == null) {
            instance = new ProdutosDao();
        }
        return instance;
    }

    public ArrayList<ProdutosBEAN> consultaTudoProd() {
        return listaProdutos("SELECT * FROM produtos");
    }
    
    public ArrayList<ProdutosBEAN> consultaCategoriaProd(String categoria) {
        return listaProdutos("SELECT * " +
                            "FROM produtos p " +
                            "WHERE p.Categoria = '"+categoria+"'");
    }

    public ArrayList<ProdutosBEAN> listaProdutos(String query) {
        ArrayList<ProdutosBEAN> lista = new ArrayList<ProdutosBEAN>();
        ResultSet rs = null;
        rs = MySQLDAO.getResultSet(query);
        try {
            while (rs.next()) {
                lista.add(new ProdutosBEAN(
                        rs.getString("codBarras"),
                        rs.getString("descricao"),
                        rs.getDouble("precoVenda")));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally{
     
        }
            
        return lista;
        
        
    }
    
    public ProdutosBEAN consultaProduto(String nome) {
        return RetornaProduto("SELECT * FROM produtos p WHERE p.codBarras = "+nome);
    }
    
    public ProdutosBEAN RetornaProduto(String query) {
        ProdutosBEAN objProduto = null;
        ResultSet rs = null;
        rs = MySQLDAO.getResultSet(query);
        try {
            while (rs.next()) {
                objProduto = (new ProdutosBEAN(
                        rs.getString("codBarras"), 
                        rs.getString("descricao"),
                        rs.getDouble("precoVenda"),
                        rs.getDouble("custo"),
                        rs.getInt("estoqueAtual"),
                        rs.getInt("estoqueMaximo"),
                        rs.getInt("estoqueMinimos"),
                        rs.getString("Categoria"),
                        rs.getString("unidade"),
                        rs.getString("Fornecedor"),
                        rs.getString("url")
                ));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally{
           
        }            
        return objProduto;       
    }
    
    public File retornaXMLLista(int opc,String snome) {
        File arquivo = null;
        ArrayList<ProdutosBEAN> produtos = null; 
        if (opc == 1) {
            produtos = consultaTudoProd();
        } else {
            produtos = consultaCategoriaProd(snome);
        }
        
        XML xml = new XML();
        
        arquivo = xml.gerarXMLLista(produtos);
        
        return arquivo;
    }
 
    public File retornaXMLDetalhe(String sCod) {
        File arquivo = null;
        
        ProdutosBEAN prod = consultaProduto(sCod);

        XML xml = new XML();
        
        arquivo = xml.gerarXMLDetalhe(prod);
        
        return arquivo;
    }

}
