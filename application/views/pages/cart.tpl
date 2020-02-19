{{include file="components/com-navbar/com-navbar.tpl"}}
{{include file="components/com-card/com-card.tpl"}}
<body>

{{call name="com_navbar" options=$menu_options icons=true brand_url=$brand_url}}
<div class="section section-1">
    <div class="container">
        <div class="row">
            {{call name="com_card" data=$PRODUCTS col=1 type="horizontal" empty="No hay productos en el carrito"}}
        </div>
    </div>
</div>
</body>
</html>