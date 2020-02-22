{{include file="components/com-navbar/com-navbar.tpl"}}
{{include file="components/com-card/com-card.tpl"}}
{{include file="components/com-footer/com-footer.tpl"}}
<body>
    {{call name="com_navbar" options=$menu_options icons=true brand_url=$brand_url}}

    <div class="section-1">
        <div class="container">
            <div class="row">
                <h4 class="col-lg-12">Tus compras</h4>
                {{call name="com_card" data=$purchases col=1 type="horizontal" url=cart empty="Todavía no se ha realizado ninguna compra"}}
            </div>
        </div>
    </div>

    <div id="contact" class="footer">
        {{call name="com_footer"}}
    </div>
</body>
</html>