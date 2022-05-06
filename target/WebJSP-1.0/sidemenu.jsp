<%
    
    try{
        String user = (String) session.getAttribute("user");
        if( user.equals("")){
            response.sendRedirect("sair.jsp");
        }
        
    }catch(NullPointerException e){
        response.sendRedirect("sair.jsp");
    }

%>

<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Bem vindo,</span>
                <h2><% out.print(session.getAttribute("user")); %></h2>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="index.jsp">Index</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-edit"></i> Curso <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="cursos.jsp">Listar Cursos</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-desktop"></i> Professor <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="professor.jsp">Listar Professores</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-table"></i> Disciplina <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="disciplina.jsp">Listar Disciplinas</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-bar-chart-o"></i> Aluno <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="aluno.jsp">Listar Alunos</a></li>
                        </ul>
                    </li>

                </ul>
            </div>


        </div>
        <!-- /sidebar menu -->

    </div>
</div>
