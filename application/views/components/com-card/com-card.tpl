{{function name="com_card" data=null type="block" empty="No hay datos" col=4 url="#" counter=false}}
    {{if !empty($data)}}
        {{foreach $data as $elm}}
            <div class="com-card col-xs-12 col-lg-{{12/$col}}" data-product-price="{{$elm['ml_product_price']}}" data-product-id="{{$elm['ml_product_id']}}">
                <div class="card {{$type}}">
                    <img class="card-img-top" src="{{base_url()}}/{{$elm['ml_product_img']}}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">{{$elm['ml_product_name']}}</h5>
                        <p class="card-text">{{$elm['ml_product_description']}}</p>
                        {{if $counter}}
                        <div class="card-count">
                            <div class="arrow-count down yellow darken-2 noselect"><i class="material-icons left">keyboard_arrow_down</i></div>
                            <input class="input-count yellow lighten-4" type="number" value="0" name="products" min="0" max="100">
                            <div class="arrow-count up yellow darken-2 noselect"><i class="material-icons left">keyboard_arrow_up</i></div>
                        </div>
                        {{else}}
                        <a href="{{base_url()}}{{$url}}" class="btn btn-primary btn-price yellow darken-2 right"><i class="material-icons left">add_shopping_cart</i>{{$elm['ml_product_price']}}<i class="material-icons right">euro</i></a>
                        {{/if}}
                    </div>
                </div>
            </div>
        {{/foreach}}
    {{else}}
        <p>{{$empty}}</p>
    {{/if}}
{{/function}}