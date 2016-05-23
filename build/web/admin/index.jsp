<%@include file="_layouts/header.jsp" %>
<%@include file="_layouts/sidebar.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <!--<small>Version 2.0</small>-->
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="ion ion-arrow-swap"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Assiduidade</span>
                        <span class="info-box-number">98<small>%</small></span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="ion ion-clock"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Não Atendidos</span>
                        <span class="info-box-number">2</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>

            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="ion ion-reply-all"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Atendidos</span>
                        <span class="info-box-number">760</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="row">

            <div class="col-md-12">
                <!-- PRODUCT LIST -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Atendimentos Recentes</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <ul class="products-list product-list-in-box">
                            <li class="item">
<!--                                <div class="product-img">
                                    <img src="dist/img/default-50x50.gif" alt="Product Image">
                                </div>-->
                                <div class="product-info">
                                    <a href="atendimentos/visualizar.jsp" class="product-title">O dispositivo não funciona.<span class="label label-danger pull-right">Não Atendido</span></a>
                                    <span class="product-description">
                                        Tentei de tudo e nada dele funcionar.....
                                    </span>
                                </div>
                            </li><!-- /.item -->
                            <li class="item">
<!--                                <div class="product-img">
                                    <img src="dist/img/default-50x50.gif" alt="Product Image">
                                </div>-->
                                <div class="product-info">
                                    <a href="atendimentos/visualizar.jsp" class="product-title">Está difícil..<span class="label label-success pull-right">Atendido</span></a>
                                    <span class="product-description">
                                        Nós entendemos. Quer tentar alguns passos? .....
                                    </span>
                                </div>
                            </li><!-- /.item -->
                            <li class="item">
<!--                                <div class="product-img">
                                    <img src="dist/img/default-50x50.gif" alt="Product Image">
                                </div>-->
                                <div class="product-info">
                                    <a href="atendimentos/visualizar.jsp" class="product-title">Não consigo acessar o site... <span class="label label-success pull-right">Atendido</span></a>
                                    <span class="product-description">
                                        Tente acessar atravez deste link...
                                    </span>
                                </div>
                            </li><!-- /.item -->
                            <li class="item">
<!--                                <div class="product-img">
                                    <img src="dist/img/default-50x50.gif" alt="Product Image">
                                </div>-->
                                <div class="product-info">
                                    <a href="atendimentos/visualizar.jsp" class="product-title">Quero comprar um produto... <span class="label label-default pull-right">Finalizado</span></a>
                                    <span class="product-description">
                                        Agradeço seu contato e boas compras....
                                    </span>
                                </div>
                            </li><!-- /.item -->
                        </ul>
                    </div><!-- /.box-body -->
                    <div class="box-footer text-center">
                        <a href="atendimentos/" class="uppercase">Ver Todos os Atendimentos</a>
                    </div><!-- /.box-footer -->
                </div><!-- /.box -->
            </div>
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<%@include file="_layouts/footer.jsp" %>

<script>
    $('#dashboard').addClass('active');
</script>