<?php
/* Smarty version 3.1.34-dev-7, created on 2020-02-17 18:07:48
  from '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/views/components/com-headboard.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e4ac864688025_01341996',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cd7e36f8d212364967712ddade0c8564de635d8d' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/views/components/com-headboard.tpl',
      1 => 1581959252,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e4ac864688025_01341996 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->smarty->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'com_headboard' => 
  array (
    'compiled_filepath' => '/Applications/XAMPP/xamppfiles/htdocs/mielera/application/cache/smarty_templates_cache/cd7e36f8d212364967712ddade0c8564de635d8d_0.file.com-headboard.tpl.php',
    'uid' => 'cd7e36f8d212364967712ddade0c8564de635d8d',
    'call_name' => 'smarty_template_function_com_headboard_20172914605e4ac864660493_11136757',
  ),
));
}
/* smarty_template_function_com_headboard_20172914605e4ac864660493_11136757 */
if (!function_exists('smarty_template_function_com_headboard_20172914605e4ac864660493_11136757')) {
function smarty_template_function_com_headboard_20172914605e4ac864660493_11136757(Smarty_Internal_Template $_smarty_tpl,$params) {
$params = array_merge(array('title'=>'','attachment'=>"fixed"), $params);
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}
?>

    <div class="com-headboard" style="background-attachment:<?php echo $_smarty_tpl->tpl_vars['attachment']->value;?>
;">
        <div class="title">
           <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
        </div>
    </div>
<?php
}}
/*/ smarty_template_function_com_headboard_20172914605e4ac864660493_11136757 */
}
