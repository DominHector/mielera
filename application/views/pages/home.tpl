{{include file="components/com-navbar/com-navbar.tpl"}}
{{include file="components/com-headboard/com-headboard.tpl"}}
{{include file="components/com-card/com-card.tpl"}}
{{include file="components/com-footer/com-footer.tpl"}}
<body>
    {{call name="com_navbar" options=$menu_options icons=true brand_url=$brand_url fading=true}}
    <div class="section-head">
            {{call name="com_headboard" attachment="fixed"}}
    </div>
    <div class="section section-2">
        <div class="container">
            <div class="row">
                {{call name="com_card" data=$PRODUCTS col=2 url=cart}}
            </div>
        </div>
    </div>
    <div class="section section-3">

    </div>
    <div id="contact" class="footer">
        {{call name="com_footer"}}
    </div>
</body>
</html>