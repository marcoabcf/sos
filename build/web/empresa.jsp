<%@include file="_layouts/header.jsp" %>

    <div class="container empresa">
        <div class="text-center">
            <div class="row">
                <h2 class="title-one">VIVO</h2>
                <div>
                    <div class="col-sm-6">
                        <h3>Why with us?</h3>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#about" data-toggle="tab"><i class="fa fa-chain-broken"></i> About</a></li>
                            <li><a href="#mission" data-toggle="tab"><i class="fa fa-th-large"></i> Mission</a></li>
                            <li><a href="#community" data-toggle="tab"><i class="fa fa-users"></i> Community</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="about">
                                <div class="media">
                                    <img class="pull-left media-object" src="assets/images/about-us/about.jpg" alt="about us"> 
                                    <div class="media-body">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="mission">
                                <div class="media">
                                    <img class="pull-left media-object" src="assets/images/about-us/mission.jpg" alt="Mission"> 
                                    <div class="media-body">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci </p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="community">
                                <div class="media">
                                    <img class="pull-left media-object" src="assets/images/about-us/community.jpg" alt="Community"> 
                                    <div class="media-body">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                    <h3>200 Atendimentos</h3>
                    <div class="skill-bar">
                        <div class="skillbar clearfix " data-percent="90%">
                            <div class="skillbar-title">
                                <span>Respondidos</span>
                            </div>
                            <div class="skillbar-bar"></div>
                            <div class="skill-bar-percent">90%</div>
                        </div> <!-- End Skill Bar -->
                        <div class="skillbar clearfix" data-percent="10%">
                            <div class="skillbar-title">
                                <span>Não Respondidos</span>
                            </div>
                            <div class="skillbar-bar"></div>
                            <div class="skill-bar-percent">10%</div>
                        </div> <!-- End Skill Bar -->
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

<%@include file="_layouts/footer.jsp" %>

<script>
    $(document).ready(function() {
        var li = $('.navbar-nav').children('li');
        
        for(var i = 1; i < 5; i++) {
            li.eq(i).remove();
        }
        li.after('<li class="active"><a id="search" onclick="location.href=\'./\'">Voltar</a></li>');
    });
</script>
    