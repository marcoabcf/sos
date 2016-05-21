<%@include file="_layouts/header.jsp" %>

<div class="container cadastro">
    <div class="row text-center clearfix">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="contact-heading">
                <h2 class="title-one">Cadastro</h2>
                <p>Com seu cadastro na SOS Company, você pode obter atendimento online de uma empresa que deseja. Insira seus dados abaixo e tenha contato direto com a empresa no conforto da sua casa.</p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="contact-details">
            <div class="pattern"></div>
            <div class="row text-center">
                <div class="col-sm-8 col-sm-offset-2 form-cadastro"> 
                    <div id="contact-form-section">
                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="contact-form" class="contact" name="contact-form" method="post" action="UsuarioSV">
                             <input type="hidden" name="action" value="salvar" />
                             <input type="hidden" name="id" value="${objUsuario.id}" />
                            <div class="form-group">
                                <input type="text" name="nome" class="form-control name-field" required="required" placeholder="Seu Nome" value="${objUsuario.nome}">
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control mail-field" required="required" placeholder="Seu E-mail" value="${objUsuario.email}">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="text" name="cpf" class="form-control mail-field" required="required" placeholder="Seu CPF" value="${objUsuario.cpf}">
                                    </div> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="password" name="senha" class="form-control mail-field" required="required" placeholder="Sua Senha" value="${objUsuario.senha}">
                                    </div> 
                                </div>
                            
                            </div>
                            <div class="form-group">
                                <input type="text" name="telefone" class="form-control name-field" placeholder="Seu Telefone" value="${objUsuario.telefone}">
                            </div>
                            <div class="form-group">
                                <button type="submit" name="btnSalvar" value="salvar" class="btn btn-primary">Cadastrar</button>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>
    </div> 
</div>

<%@include file="_layouts/footer.jsp" %>

<script>
    $(document).ready(function () {
        var li = $('.navbar-nav').children('li');

        for (var i = 1; i < 5; i++) {
            li.eq(i).remove();
        }
        li.after('<li class="active"><a id="search" onclick="location.href=\'./\'">Voltar</a></li>');
    });
</script>
