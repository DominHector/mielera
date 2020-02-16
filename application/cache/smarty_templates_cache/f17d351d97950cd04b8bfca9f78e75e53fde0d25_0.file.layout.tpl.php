<?php
/* Smarty version 3.1.34-dev-7, created on 2020-02-16 00:33:58
  from '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/views/layout.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e487fe66dddc9_92194241',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f17d351d97950cd04b8bfca9f78e75e53fde0d25' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/views/layout.tpl',
      1 => 1581809607,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:components/com-headboard.tpl' => 1,
  ),
),false)) {
function content_5e487fe66dddc9_92194241 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:components/com-headboard.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('title'=>"Main Page"), 0, false);
?>
<body>
    <div id="content">
        <div id="content">
            <?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, "headboard", array('saludo'=>((string)$_smarty_tpl->tpl_vars['saludo']->value)), true);?>

        </div>
    </div>
</body>
</html><?php }
}
