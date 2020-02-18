{{function name="com_card" data=null type="block" empty="No hay datos" col=4}}

    {{if !empty($data)}}
        {{foreach $data as $elm}}
            <div class="com-card col-xs-12 col-lg-{{12/$col}}">
                <div class="card {{$type}}">
                    <img class="card-img-top" src="{{base_url()}}/{{$elm['ml_product_img']}}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">{{$elm['ml_product_name']}}</h5>
                        <p class="card-text">{{$elm['ml_product_description']}}</p>
                        <a href="#" class="btn btn-primary btn-price yellow darken-2 right"><i class="material-icons left">add_shopping_cart</i>{{$elm['ml_product_price']}}<i class="material-icons right">euro</i></a>
                    </div>
                </div>
            </div>
        {{/foreach}}
    {{else}}
        <p>{{$empty}}</p>
    {{/if}}
{{/function}}