<jsp:include page="../_layouts/header.jsp" />
<jsp:include page="../_layouts/sidebar.jsp" />

<div class="content-wrapper" style="min-height: 916px;">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Empresas Cadastradas</h3>

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
                                    <th>Nome</th>
                                    <th>Descrição</th>
                                    <th class="text-center">Data de Cadastro</th>
                                    <th>Status</th>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Empresa Ltda</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    <td class="text-center">02/04/2016</td>
                                    <td><span class="label label-success">Ativo</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Empresa 2 Ltda</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    <td class="text-center">14/04/2016</td>
                                    <td><span class="label label-success">Ativo</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Empresa 3 Ltda</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    <td class="text-center">12/06/2016</td>
                                    <td><span class="label label-danger">Desativado</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Empresa 4 Ltda</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                    <td class="text-center">14/06/2016</td>
                                    <td><span class="label label-success">Ativo</span></td>
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
    $('#empresas').addClass('active');
    $('#empresas').children('.treeview-menu').children('.listar').addClass('active');
</script>