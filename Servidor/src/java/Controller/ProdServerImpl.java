package Controller;

import Model.ProdutosDao;
import java.io.File;
import javax.jws.WebService;

@WebService(endpointInterface = "Controller.ProdServer")
public class ProdServerImpl implements ProdServer {

    private String LocalAPIKey = "XH58_k+EmDhZdnC";

    public File ListarProdutosCategoria(String categoria, String APIKey) {
        if (APIKey.equals(LocalAPIKey)) {
            //Consultar no banco e retornar uma lista
            ProdutosDao prodcat = new ProdutosDao();
            //return prodcat.consultaCategoriaProd(categoria);
            return prodcat.retornaXMLLista(2, categoria);
        };
        return null;
    }

    public File ListarProdutosAll(String APIKey) {
        if (APIKey.equals(LocalAPIKey)) {
            //instancio a classe
            ProdutosDao prod = new ProdutosDao();
            //dentro dessa classe eu busco os produtos 
            //transformo em xml e retorno o arquivo
            return prod.retornaXMLLista(1, "APIKey");
        };
        return null;
    }

    public File ProdutosDet(String codigo, String APIKey) {
        if (APIKey.equals(LocalAPIKey)) {
            //Consultar no banco e retornar um obj
            ProdutosDao Dadoprod = new ProdutosDao();
            //return Dadoprod.consultaCategoriaProd(codigo);
            return Dadoprod.retornaXMLDetalhe(codigo);
        };
        return null;
    }

}
