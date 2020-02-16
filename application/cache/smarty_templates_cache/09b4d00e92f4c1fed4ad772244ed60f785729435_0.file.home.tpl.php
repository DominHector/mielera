<?php
/* Smarty version 3.1.34-dev-7, created on 2020-02-16 02:24:16
  from '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/views/home.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e4899c0ab3dd3_51303401',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '09b4d00e92f4c1fed4ad772244ed60f785729435' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/views/home.tpl',
      1 => 1581816254,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:components/com-headboard.tpl' => 1,
  ),
),false)) {
function content_5e4899c0ab3dd3_51303401 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:components/com-headboard.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('title'=>"Main Page"), 0, false);
?>
<body>
    <div class="section-head">
        <?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, "headboard", array('title'=>((string)$_smarty_tpl->tpl_vars['title']->value),'attachment'=>"fixed"), true);?>

    </div>
</body>
</html><?php }
}
