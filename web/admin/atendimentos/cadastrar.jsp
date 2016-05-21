<jsp:include page="../_layouts/header.jsp" />
<jsp:include page="../_layouts/sidebar.jsp" />

<div class="content-wrapper">
    <section class="content">
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Cadastrar Atendimento</h3>
            </div>
            <!-- /.box-header -->
             <form id="contact-form" class="contact" name="contact-form" method="post" action="AtendimentoSV">
                    <input type="hidden" name="action" value="salvar" />
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Título</label>
                                <input type="text" class="form-control" placeholder="Título">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Área</label>
                                <select class="form-control">
                                    <option>option 1</option>
                                    <option>option 2</option>
                                    <option>option 3</option>
                                    <option>option 4</option>
                                    <option>option 5</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Empresa</label>
                                <select class="form-control">
                                    <option>option 1</option>
                                    <option>option 2</option>
                                    <option>option 3</option>
                                    <option>option 4</option>
                                    <option>option 5</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">

                            <textarea class="textarea" placeholder="Digite aqui seu problema, solução..." style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px; resize:none;"></textarea>

                            <button type="button" class="btn btn-default btn-sm pull-right" title="Enviar">
                                Enviar
                            </button>
                        </div>
                    </div>
            </form>
        </div>
    </section>
</div>

<jsp:include page="../_layouts/footer.jsp" />

<script>
    $('#atendimentos').addClass('active');
    $('#atendimentos').children('.treeview-menu').children('.cadastrar').addClass('active');
</script>