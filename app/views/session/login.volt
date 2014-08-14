{{ content() }}

<div class="form-box" id="login-box">
    <div class="header"><?php echo $t["login_page"] ?></div>
    {{ form('class': 'form-inline') }}
        <div class="body bg-gray">
            <div class="form-group">
            	{{ form.render('email') }}
            </div>
            <div class="form-group">
            	{{ form.render('password', ['placeholder': t["pass"]]) }}
            </div>          
        </div>
        <div class="footer">
        	{{ form.render(t["login"]) }}
            {{ form.render('csrf', ['value': security.getToken()]) }}
            <p>{{ link_to("session/forgotPassword", t["forgotPass"]) }}</p>
        </div>
    </form>
</div>