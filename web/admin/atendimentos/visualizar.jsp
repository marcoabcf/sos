<jsp:include page="../_layouts/header.jsp" />
<jsp:include page="../_layouts/sidebar.jsp" />

<div class="content-wrapper" style="min-height: 916px;">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box collapsed-box">
                    <div class="box-header">
                        <h3 class="box-title">Escreva Aqui</h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad">
                        <form>
                            <textarea class="textarea" placeholder="Digite aqui seu problema, solução..." style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px; resize:none;"></textarea>

                            <button type="button" class="btn btn-default btn-sm pull-right" title="Enviar">
                                Enviar
                            </button>
                        </form>
                    </div>
                </div>
                <div class="callout callout-info primary-person">
                    <h4>Tip!</h4>

                    <p>Add the sidebar-collapse class to the body tag to get this layout. You should combine this option with a
                        fixed layout if you have a long sidebar. Doing that will prevent your page content from getting stretched
                        vertically.</p>
                </div>
                <div class="callout callout-info second-person">
                    <h4>Tip!</h4>

                    <p>Add the sidebar-collapse class to the body tag to get this layout. You should combine this option with a
                        fixed layout if you have a long sidebar. Doing that will prevent your page content from getting stretched
                        vertically.</p>
                </div>
                <div class="callout callout-info primary-person">
                    <h4>Tip!</h4>

                    <p>Add the sidebar-collapse class to the body tag to get this layout. You should combine this option with a
                        fixed layout if you have a long sidebar. Doing that will prevent your page content from getting stretched
                        vertically.</p>
                </div>
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