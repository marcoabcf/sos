<jsp:include page="../_layouts/header.jsp" />
<jsp:include page="../_layouts/sidebar.jsp" />

<div class="content-wrapper">
    <section class="content">
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Cadastrar Empresa</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <form id="contact-form" class="contact" name="contact-form" method="post" action="EmpresaSV">
                       <input type="hidden" name="action" value="salvar" />
                       <input type="hidden" name="id" value="${objEmpresa.id}" />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Nome</label>
                                <input type="text" name="nome" required="required" class="form-control" placeholder="SOS Company" value="${objEmpresa.nome}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Telefone</label>
                                <input type="text" name="telefone" class="form-control" placeholder="(62)9999-9999" value="${objEmpresa.telefone}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="text" name="email" required="required" class="form-control" placeholder="joao@email.com" value="${objEmpresa.email}">
                                </div>
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                                <label>Senha</label>
                                <input type="password" name="senha" required="required" class="form-control" placeholder="*********" value="${objEmpresa.senha}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>CNPJ</label>
                                <input type="text" name="cnpj" required="required" class="form-control" placeholder="00.000.000/0000-00" value="${objEmpresa.cnpj}">
                            </div>
                        </div>
                                  
                        <div class="col-md-12">
                            <button type="submit" value="salvar" class="btn btn-default btn-sm pull-right" title="Enviar">
                                Salvar
                            </button>
                        </div>
                    </div>
                </form>
                <!-- /.row -->
            </div>
        </div>
    </section>
</div>

<jsp:include page="../_layouts/footer.jsp" />

<script>
    $('#empresas').addClass('active');
    $('#empresas').children('.treeview-menu').children('.cadastrar').addClass('active');
</script>