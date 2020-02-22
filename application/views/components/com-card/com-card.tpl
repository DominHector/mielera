{{function name="com_card" data=null type="block" empty="No hay datos" col=4 url="#" counter=false}}
    {{if !empty($data)}}
        {{foreach $data as $elm}}
            <div class="com-card col-xs-12 col-lg-{{12/$col}}" data-product-price="{{$elm['ml_product_price']}}" data-product-id="{{$elm['ml_product_id']}}">
                <div class="card {{$type}}">
                    <div class="card-image">
                        <img class="card-img-top" src="{{base_url()}}/{{$elm['ml_product_img']}}" alt="Card image cap">
{{*                        <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>*}}
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">{{$elm['ml_product_name']}}</h5>
                        <p class="card-text">{{$elm['ml_product_description']}}</p>
                        {{if $counter}}
                        <div class="card-count right">
                            <div class="arrow-count down yellow darken-2 noselect"><i class="material-icons left">keyboard_arrow_down</i></div>
                            <input class="input-count yellow lighten-4" disabled type="number" value="0" name="products" min="0" max="100">
                            <div class="arrow-count up yellow darken-2 noselect"><i class="material-icons left">keyboard_arrow_up</i></div>
                        </div>
                        <span class="text-price yellow-text text-darken-3 right">{{$elm['ml_product_price']}}<i class="material-icons">euro</i></span>
                        {{else}}
                            {{if !empty($elm['ml_purchase_quantity'])}}<span class="card-info yellow-text text-darken-2 left"><b>{{$elm['ml_purchase_quantity']}}</b> comprado{{if $elm['ml_purchase_quantity'] > 1}}s{{/if}} el <b>{{$elm['ml_purchase_date']}}</b></span>{{/if}}
                            <a href="{{base_url()}}{{$url}}" class="btn btn-primary btn-price yellow darken-2 right"><i class="material-icons left">add_shopping_cart</i>{{$elm['ml_product_price']}}<i class="material-icons right">euro</i></a>
                        {{/if}}
                    </div>
                </div>
            </div>
        {{/foreach}}
    {{else}}
        <div class="com-card">
            <h6 class="empty-message col-xs-12">{{$empty}}</h6>
        </div>
    {{/if}}
{{/function}}