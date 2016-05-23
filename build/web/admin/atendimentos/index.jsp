<jsp:include page="../_layouts/header.jsp" />
<jsp:include page="../_layouts/sidebar.jsp" />

<div class="content-wrapper" style="min-height: 916px;">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Atendimentos</h3>

                        <div class="box-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control pull-right" placeholder="Pesquisar">

                                <div class="input-group-btn">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <th>Título</th>
                                    <th>Última mensagem</th>
                                    <th>Empresa</th>
                                    <th class="text-center">Data de Cadastro</th>
                                    <th>Status</th>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">O dispositivo não funciona.</a></td>
                                    <td>Tentei de tudo e nada dele funcionar....</td>
                                    <td><a href="../empresas/visualizar.jsp">Empresa 2 Ltda</a></td>
                                    <td class="text-center">11/07/2016</td>
                                    <td><span class="label label-danger">Não Atendido</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Está difícil..</a></td>
                                    <td>Nós entendemos. Quer tentar alguns passos? .....</td>
                                    <td><a href="../empresas/visualizar.jsp">Empresa Ltda</a></td>
                                    <td class="text-center">10/07/2016</td>
                                    <td><span class="label label-success">Atendido</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Não consigo acessar o site...</a></td>
                                    <td>Tente acessar atravez deste link...</td>
                                    <td><a href="../empresas/visualizar.jsp">Empresa 4 Ltda</a></td>
                                    <td class="text-center">11/07/2016</td>
                                    <td><span class="label label-success">Atendido</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Quero comprar um produto...</a></td>
                                    <td>Agradeço seu contato e boas compras....</td>
                                    <td><a href="../empresas/visualizar.jsp">Empresa 4 Ltda</a></td>
                                    <td class="text-center">14/07/2016</td>
                                    <td><span class="label label-default">Finalizado</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>

<jsp:include page="../_layouts/footer.jsp" />

<script>
    $('#atendimentos').addClass('active');
    $('#atendimentos').children('.treeview-menu').children('.listar').addClass('active');
</script>