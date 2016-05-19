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
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" class="form-control" placeholder="Enter ...">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Email</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                <input type="text" class="form-control" placeholder="joao@email.com">
                            </div>
                        </div>
                    </div>
                </div>
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