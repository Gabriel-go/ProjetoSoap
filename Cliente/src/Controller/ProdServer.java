package Controller;

import Model.ProdutosBEAN;
import java.io.File;
import java.util.ArrayList;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style = Style.RPC)
public interface ProdServer {
    @WebMethod
    File ListarProdutosCategoria(String categoria, String APIKey);

    @WebMethod
    File ListarProdutosAll(String APIKey);

    @WebMethod
    File ProdutosDet(String codigo, String APIKey);
}
