package Model;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.XMLOutputter;
 
public class XML {
        
      public File gerarXMLLista(ArrayList<ProdutosBEAN> produtos) {
        File arquivo = null;
        
        
        Element loja = new Element("Loja") {};
        Document documento = new Document(loja);

        for (ProdutosBEAN umProduto : produtos) {
            
            Element produto = new Element("Produtos");
            produto.setAttribute("id",umProduto.getCodBarras());
            
            Element nome = new Element("Nome");
            nome.setText(umProduto.getDescricao()); 
           
            Element preco = new Element("Preco");
            preco.setText(String.valueOf(umProduto.getPrecoVenda())); 
            
            produto.addContent(nome);
            produto.addContent(preco);
            loja.addContent(produto);
        }
        
        XMLOutputter xout = new XMLOutputter();
        
        try{
            arquivo = new File("C:\\xml\\arquivo.xml");
            xout.output(documento, new FileWriter(arquivo));
        }catch(Exception e) {
            System.err.print("Erro: " + e);
        }
        
        return arquivo;
    }
 
    public File gerarXMLDetalhe(ProdutosBEAN prod) {
        File arquivo = null;
        
        Element loja = new Element("Loja") {
        };
        Document documento = new Document(loja);

        Element produto = new Element("Produtos");
        produto.setAttribute("id", prod.getCodBarras());

        Element nome = new Element("Nome");
        nome.setText(prod.getDescricao());

        Element preco = new Element("Preco");
        preco.setText(String.valueOf(prod.getPrecoVenda()));
        
        Element custo = new Element("Custo");
        custo.setText(String.valueOf(prod.getCusto()));
        
        Element estoqueAtual = new Element("estoqueAtual");
        estoqueAtual.setText(String.valueOf(prod.getEstoqueAtual()));
        
        Element estoqueMaximo = new Element("estoqueMaximo");
        estoqueMaximo.setText(String.valueOf(prod.getEstoqueMaximo()));
        
        Element estoqueMinimos = new Element("estoqueMinimos");
        estoqueMinimos.setText(String.valueOf(prod.getEstoqueMinimos()));
        
        Element Categoria = new Element("Categorias");
        Categoria.setText(String.valueOf(prod.getCategorias()));
        
        Element UnidadeMedida = new Element("UnidadeMedida");
        UnidadeMedida.setText(String.valueOf(prod.getUnidadeMedida()));
        
        Element Fornecedores = new Element("Fornecedores");
        Fornecedores.setText(String.valueOf(prod.getFornecedores())); 
        
        Element url = new Element("Url");
        url.setText(prod.getUrl());
      
        produto.addContent(nome);
        produto.addContent(preco);
        produto.addContent(custo);
        produto.addContent(estoqueAtual);
        produto.addContent(estoqueMaximo);
        produto.addContent(estoqueMinimos);
        produto.addContent(Categoria);
        produto.addContent(UnidadeMedida);
        produto.addContent(Fornecedores);       
        produto.addContent(url);    
        loja.addContent(produto);

        XMLOutputter xout = new XMLOutputter();

        try {
            arquivo = new File("C:\\xml\\arquivodet.xml");
            xout.output(documento, new FileWriter(arquivo));
        } catch (Exception e) {
            System.err.print("Erro: " + e);
        }

        return arquivo;
    }
  
}
