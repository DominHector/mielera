{{include file="components/com-navbar/com-navbar.tpl" title="Main Page"}}
{{include file="components/com-headboard/com-headboard.tpl" title="Main Page"}}
{{include file="components/com-card/com-card.tpl" title="Main Page"}}
<body>

    {{call name="com_navbar" options=$menu_options icons=true brand_url=$brand_url opacity=false}}

    <div class="container">
        <div class="row">
            <div class="form-login">
                <form class="col-lg-12" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" name="user" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="pass" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>