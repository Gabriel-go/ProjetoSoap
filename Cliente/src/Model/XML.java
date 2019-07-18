package Model;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;

public class XML {
    public static ArrayList<ProdutosBEAN> arquivoXMLCliente(File arquivo) {

        ArrayList<ProdutosBEAN> lista = new ArrayList<ProdutosBEAN>();

        Document documento = null;
        SAXBuilder sax = new SAXBuilder();

        try {
            documento = sax.build(arquivo);
        } catch (Exception e) {
            System.err.print("Erro: " + e);
        }

        Element supermarket = documento.getRootElement();
        List<Element> elementos = supermarket.getChildren();

        for (Element element : elementos) {
            //vai ser gerado na lista os obj
            System.out.println(element.getAttributeValue("id"));
            lista.add(new ProdutosBEAN(
                    //aqui eu coloco os atributos do meu xml
                    element.getAttributeValue("id"),
                    element.getChildText("Nome"),
                    (Double.parseDouble(element.getChildText("Preco")))));
        }

        return lista;
    }

    public static ProdutosBEAN arquivoXMLDetCliente(File arquivo) {
        ProdutosBEAN obj = null;

        Document documento = null;
        SAXBuilder sax = new SAXBuilder();
        
        try {
            documento = sax.build(arquivo);
        } catch (Exception e) {
            System.err.print("Erro: " + e);
        }

        Element supermarket = documento.getRootElement();
        List<Element> elementos = supermarket.getChildren();

        for (Element element : elementos) {
            //vai ser gerado na lista os obj
            System.out.println(element.getAttributeValue("id"));
             obj = (new ProdutosBEAN(
                    //aqui eu coloco os atributos do meu xml
                    element.getAttributeValue("id"),
                    element.getChildText("Nome"),
                    Double.parseDouble(element.getChildText("Preco")),
                    Double.parseDouble(element.getChildText("Custo")),
                    Integer.parseInt(element.getChildText("estoqueAtual")),
                    Integer.parseInt(element.getChildText("estoqueMaximo")),
                    Integer.parseInt(element.getChildText("estoqueMinimos")),
                    element.getChildText("Categorias"),
                    element.getChildText("UnidadeMedida"),
                    element.getChildText("Fornecedores"),
                    element.getChildText("Url")));
        }
        
        return obj;
    }
   
}
