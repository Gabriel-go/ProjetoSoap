package Model;

public class ProdutosBEAN {

    private String codBarras;
    private String descricao;
    private double precoVenda;
    private double custo;
    private int estoqueAtual;
    private int estoqueMaximo;
    private int estoqueMinimos;
    private String Categorias;
    private String UnidadeMedida;
    private String Fornecedores;
    private String url;

    public ProdutosBEAN(String codBarras, String descricao, double precoVenda) {
        this.codBarras = codBarras;
        this.descricao = descricao;
        this.precoVenda = precoVenda;
    }

    public ProdutosBEAN(String codBarras, String descricao, double precoVenda, double custo, int estoqueAtual, int estoqueMaximo, int estoqueMinimos, String Categorias, String UnidadeMedida, String Fornecedores, String url) {
        this.codBarras = codBarras;
        this.descricao = descricao;
        this.precoVenda = precoVenda;
        this.custo = custo;
        this.estoqueAtual = estoqueAtual;
        this.estoqueMaximo = estoqueMaximo;
        this.estoqueMinimos = estoqueMinimos;
        this.Categorias = Categorias;
        this.UnidadeMedida = UnidadeMedida;
        this.Fornecedores = Fornecedores;
        this.url = url;
    }

    public String getCodBarras() {
        return codBarras;
    }

    public void setCodBarras(String codBarras) {
        this.codBarras = codBarras;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPrecoVenda() {
        return precoVenda;
    }

    public void setPrecoVenda(double precoVenda) {
        this.precoVenda = precoVenda;
    }

    public double getCusto() {
        return custo;
    }

    public void setCusto(double custo) {
        this.custo = custo;
    }

    public int getEstoqueAtual() {
        return estoqueAtual;
    }

    public void setEstoqueAtual(int estoqueAtual) {
        this.estoqueAtual = estoqueAtual;
    }

    public int getEstoqueMaximo() {
        return estoqueMaximo;
    }

    public void setEstoqueMaximo(int estoqueMaximo) {
        this.estoqueMaximo = estoqueMaximo;
    }

    public int getEstoqueMinimos() {
        return estoqueMinimos;
    }

    public void setEstoqueMinimos(int estoqueMinimos) {
        this.estoqueMinimos = estoqueMinimos;
    }

    public String getCategorias() {
        return Categorias;
    }

    public void setCategorias(String Categorias) {
        this.Categorias = Categorias;
    }

    public String getUnidadeMedida() {
        return UnidadeMedida;
    }

    public void setUnidadeMedida(String UnidadeMedida) {
        this.UnidadeMedida = UnidadeMedida;
    }

    public String getFornecedores() {
        return Fornecedores;
    }

    public void setFornecedores(String Fornecedores) {
        this.Fornecedores = Fornecedores;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }



}
