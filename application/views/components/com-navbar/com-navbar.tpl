{{function name="com_navbar" options=false icons=false urls="#" brand_url="#" fading=false}}

    <ul id="dropdown1" class="dropdown-content">
        {{if $options}}
            {{foreach $options as $option}}
                <li><a href="{{base_url()}}{{$option['ml_option_url']}}">{{$option['ml_option_name']}} {{if $icons and $option['ml_option_icon']}}<i class="material-icons right">{{$option['ml_option_icon']}}</i>{{/if}}</a></li>
            {{/foreach}}
        {{/if}}
    </ul>

    <div class="com-navbar {{if $fading}}fading{{else}}not-fading{{/if}}">
        <nav class="yellow darken-2">
            <div class="nav-wrapper">
                <a href="{{base_url()}}" class="brand-logo d-inline-flex left"> <img src="{{$brand_url}}"><b>mielera</b></a>
                <ul class="right hide-on-med-and-down">
                    {{if $options}}
                        {{foreach $options as $option}}
                            <li><a href="{{base_url()}}{{$option['ml_option_url']}}">{{$option['ml_option_name']}} {{if $icons and $option['ml_option_icon']}}<i class="material-icons right">{{$option['ml_option_icon']}}</i>{{/if}}</a></li>
                        {{/foreach}}
                    {{/if}}
                </ul>
                <ul class="right hide-on-large-only">
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1"><i class="material-icons right">menu</i></a></li>
                </ul>
            </div>
        </nav>
    </div>

{{/function}}