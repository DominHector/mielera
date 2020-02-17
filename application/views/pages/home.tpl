{{include file="components/com-headboard/com-headboard.tpl" title="Main Page"}}
{{include file="components/com-card/com-card.tpl" title="Main Page"}}
<body>
    <div class="section-head">
        {{call name="com_headboard" title="$title" attachment="fixed"}}
    </div>
    <div class="section section-2">
        <div class="container">
            <div class="row">
                {{call name="com_card" data=$PRODUCTS}}
            </div>
        </div>
    </div>
    <div class="section section-3">

    </div>
    <div class="section section-4">

    </div>
</body>
</html>