{{ content() }}

<div class="form-box" id="login-box">
    <div class="header">Forgot Password</div>
    {{ form('class': 'form-inline') }}
        <div class="body bg-gray">
            <div>
            	{{ form.render('email') }}
            </div>
        </div>
        <div class="footer">
        	{{ form.render('Send') }}
        	<p>{{ link_to("session/login", "Back to Login") }}</p>
        </div>
    </form>
</div>