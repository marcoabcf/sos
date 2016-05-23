<jsp:include page="../_layouts/header.jsp" />
<jsp:include page="../_layouts/sidebar.jsp" />

<div class="content-wrapper" style="min-height: 916px;">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">

                <!-- Profile Image -->
                <div class="box">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="<%=request.getContextPath()%>/admin/assets/dist/img/default-50x50.gif" alt="User profile picture">

                        <h3 class="profile-username text-center">Empresa Ltda</h3>
                        <p class="text-muted text-center">Empresa</p>
                        <div class="row">
                            <div class="col-md-12">
                                <strong><i class="fa fa-book margin-r-5"></i> Descrição</strong>
                                <div class="pull-right">
                                    <button class="btn btn-warning" onclick="location.href='../atendimentos/cadastrar.jsp'">Cadastrar Atendimento</button>
                                </div>
                                <p class="text-muted">
                                    B.S. in Computer Science from the University of Tennessee at Knoxville
                                </p>
                                <hr>
                            </div>
                            
                            <div class="col-md-12">
                                <strong><i class="fa fa-book margin-r-5"></i> FAQ</strong>
                            </div>
                        </div>
                    </div>
                    <div class="box box-solid">
                        <!-- /.box-header -->
                        <div class="box-body faq-visualizar">
                            <div class="box-group" id="accordion">
                                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                <div class="panel box">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="collapsed">
                                                1- Pergunta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                        <div class="box-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                                            wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                            assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                            farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                                            labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                                                2- Pergunta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                        <div class="box-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                                            wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                            assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                            farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                                            labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="" aria-expanded="true">
                                                3- Pergunta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse" aria-expanded="true">
                                        <div class="box-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                                            wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                            assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                            farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                                            labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" class="collapsed">
                                                4- Pergunta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseFour" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                        <div class="box-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                                            wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                            assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                            farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                                            labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="collapsed" aria-expanded="false">
                                                5- Pergunta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseFive" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                        <div class="box-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                                            wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                            assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                            farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                                            labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="" aria-expanded="true">
                                                6- Pergunta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseSix" class="panel-collapse collapse" aria-expanded="true">
                                        <div class="box-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                                            wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                            assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                            farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                                            labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    <!--                        
                                            <strong><i class="fa fa-book margin-r-5"></i> Education</strong>
                                            <p class="text-muted">
                                                B.S. in Computer Science from the University of Tennessee at Knoxville
                                            </p>
                                            <hr>
                    
                                            <strong><i class="fa fa-map-marker margin-r-5"></i> Localização</strong>
                                            <p class="text-muted">Malibu, California</p>
                                            
                                            <hr>
                    
                                            <strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>
                                            <p>
                                                <span class="label label-default">Coding</span>
                                                <span class="label label-info">Javascript</span>
                                                <span class="label label-warning">PHP</span>
                                                <span class="label label-primary">Node.js</span>
                                            </p>
                                            <hr>
                    
                                            <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>-->
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