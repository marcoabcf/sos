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
                <div class="row">
                    <!-- The time line -->
                    <ul class="timeline">
                        <li>
                            <i class="fa fa-user bg-aqua"></i>

                            <div class="timeline-item">
                                <span class="time"><i class="fa fa-calendar"></i> 10 Fev. 2016</span>

                                <h3 class="timeline-header"><a href="#">João José</a></h3>

                                <div class="timeline-body">
                                    Olá. Estou com um problema....
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-suitcase  bg-blue"></i>

                            <div class="timeline-item">
                                <span class="time"><i class="fa fa-calendar"></i> 11 Fev. 2016</span>

                                <h3 class="timeline-header"><a href="#">Atendente</a></h3>

                                <div class="timeline-body">
                                    Nós entendemos. Quer tentar alguns passos? .....
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-clock-o bg-gray"></i>
                        </li>
                    </ul>
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