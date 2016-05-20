<jsp:include page="_layouts/header.jsp" />
<jsp:include page="_layouts/sidebar.jsp" />

<div class="content-wrapper" style="min-height: 916px;">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">

                <!-- Profile Image -->
                <div class="box">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="<%=request.getContextPath()%>/admin/assets/dist/img/user2-160x160.jpg" alt="User profile picture">

                        <h3 class="profile-username text-center">Alexander Pierce</h3>
                        <p class="text-muted text-center">Administrador</p>
                        
                        <strong><i class="fa fa-book margin-r-5"></i> Education</strong>
                        <p class="text-muted">
                            B.S. in Computer Science from the University of Tennessee at Knoxville
                        </p>
                        <hr>

                        <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>
                        <p class="text-muted">Malibu, California</p>
                        
                        <hr>

                        <strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>
                        <p>
                            <span class="label label-danger">UI Design</span>
                            <span class="label label-success">Coding</span>
                            <span class="label label-info">Javascript</span>
                            <span class="label label-warning">PHP</span>
                            <span class="label label-primary">Node.js</span>
                        </p>
                        <hr>

                        <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
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