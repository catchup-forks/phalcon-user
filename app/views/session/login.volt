{{ content() }}

<div class="form-box" id="login-box">
    <div class="header">Administrator</div>
    {{ form('class': 'form-inline') }}
        <div class="body bg-gray">
            <div class="form-group">
            	{{ form.render('email') }}
            </div>
            <div class="form-group">
            	{{ form.render('password') }}
            </div>          
        </div>
        <div class="footer">
        	{{ form.render('Login') }}
            {{ form.render('csrf', ['value': security.getToken()]) }}
            <p>{{ link_to("session/forgotPassword", "Forgot my password") }}</p>
        </div>
    </form>
</div>