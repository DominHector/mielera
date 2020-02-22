{{include file="components/com-navbar/com-navbar.tpl"}}
{{include file="components/com-cart/com-cart.tpl"}}
{{include file="components/com-footer/com-footer.tpl"}}
<body>
    {{call name="com_navbar" options=$menu_options icons=true brand_url=$brand_url}}
    {{call name="com_cart"}}
    <div class="section section-3 panal"></div>
    <div id="contact" class="footer">
        {{call name="com_footer"}}
    </div>
</body>
</html>