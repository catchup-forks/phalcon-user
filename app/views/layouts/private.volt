<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        {{ get_title() }}
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <meta name="description" content="VSCMS">
        <meta name="author" content="VSCMS">
        <!-- bootstrap 3.0.2 -->
        {{ stylesheet_link('plugins/admin-lte/css/bootstrap.min.css') }}
        <!-- font Awesome -->
        {{ stylesheet_link('plugins/admin-lte/css/font-awesome.min.css') }}
        <!-- Ionicons -->
        {{ stylesheet_link('plugins/admin-lte/css/ionicons.min.css') }}
        <!-- Theme style -->
        {{ stylesheet_link('plugins/admin-lte/css/AdminLTE.css') }}

        <!-- jQuery 2.0.2 -->
        {{ javascript_include('plugins/jquery/dist/jquery.min.js') }}
        <!-- jQuery UI 1.10.3 -->
        {{ javascript_include('plugins/admin-lte/js/jquery-ui-1.10.3.min.js') }}
        <!-- Bootstrap -->
        {{ javascript_include('plugins/admin-lte/js/bootstrap.min.js') }}
        <!-- AdminLTE App -->
        {{ javascript_include('plugins/admin-lte/js/AdminLTE/app.js') }}
        
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->        

    </head>
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="{{ url("index") }}" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                VSCMS
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="{{ url("set-language/en") }}">
                            {{ image("img/en.png", "alt": "EN") }}
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="{{ url("set-language/vi") }}">
                            {{ image("img/vi.png", "alt": "VI") }}
                            </a>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span>{{ auth.getName() }} <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="{{ url("users/changePassword") }}" class="btn btn-default btn-flat">Change Password</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="{{ url("session/logout") }}" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">                
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        {%- set menus = [
                            'Users': 'users',
                            'Profiles': 'profiles',
                            'Permissions': 'permissions'
                        ] -%}

                        {%- for key, value in menus %}
                            {% if value == dispatcher.getControllerName() %}
                            <li class="active">
                                <a href="{{ url(value) }}">
                                    <i class="fa"></i> <span>{{ key }}</span>
                                </a>
                            </li>
                            {% else %}
                            <li>
                                <a href="{{ url(value) }}">
                                    <i class="fa"></i> <span>{{ key }}</span>
                                </a>
                            </li> 
                            {% endif %}
                        {%- endfor -%}                  
                                               
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">                
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        {%- for key, value in menus %}
                            {% if value == dispatcher.getControllerName() %}
                            {{ key }}
                            {% endif %}
                        {%- endfor -%}
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="{{ url("users") }}"><i class="fa fa-dashboard"></i> Home</a></li>
                        
                        {%- for key, value in menus %}
                            {% if value == dispatcher.getControllerName() %}
                            <li class="active">{{ key }}</li>
                            {% endif %}
                        {%- endfor -%}
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    {{ content() }}
                </section><!-- /.content -->

            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
    </body>
</html>