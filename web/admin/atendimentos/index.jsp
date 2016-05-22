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
                                    <th>T�tulo</th>
                                    <th>�ltima mensagem</th>
                                    <th>Empresa</th>
                                    <th class="text-center">Data de Cadastro</th>
                                    <th>Status</th>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">John Doe</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner...</td>
                                    <td>Empresa Ltda</td>
                                    <td class="text-center">10/07/2016</td>
                                    <td><span class="label label-success">Atendido</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Alexander Pierce</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner...</td>
                                    <td>Empresa 2 Ltda</td>
                                    <td class="text-center">11/07/2016</td>
                                    <td><span class="label label-warning">Pendente</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Bob Doe</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner...</td>
                                    <td>Empresa 4 Ltda</td>
                                    <td class="text-center">11/07/2016</td>
                                    <td><span class="label label-primary">Fechado</span></td>
                                </tr>
                                <tr>
                                    <td><a href="./visualizar.jsp">Mike Doe</a></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner...</td>
                                    <td>Empresa 4 Ltda</td>
                                    <td class="text-center">14/07/2016</td>
                                    <td><span class="label label-danger">N�o Atendido</span></td>
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