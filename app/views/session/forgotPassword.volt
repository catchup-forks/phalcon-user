{{ content() }}

<div class="form-box" id="login-box">
    <div class="header"><?php echo $t["forgot_page"] ?></div>
    {{ form('class': 'form-inline') }}
        <div class="body bg-gray">
            <div>
            	{{ form.render('email') }}
            </div>
        </div>
        <div class="footer">
        	{{ form.render(t["send"]) }}
        	<p>{{ link_to("session/login", t["backLogin"]) }}</p>
        </div>
    </form>
</div>