{{function name="com_card" data=null empty="No hay elementos"}}
    {{if !empty($data)}}
        {{foreach $data as $elm}}
            <div class="com-card col-xs-12 col-lg-{{12/$data|@count*2}}">
                <div class="card">
                    <img class="card-img-top" src="{{base_url()}}/{{$elm['ml_product_img']}}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">{{$elm['ml_product_name']}}</h5>
                        <p class="card-text">{{$elm['ml_product_description']}}</p>
                        <a href="#" class="btn btn-primary yellow darken-2">Comprar</a>
                    </div>
                </div>
            </div>
        {{/foreach}}
    {{else}}
        <p>{{$empty}}</p>
    {{/if}}
{{/function}}