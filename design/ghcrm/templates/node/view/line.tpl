{* DO NOT EDIT THIS FILE! Use an override template instead. *}

{default node_name=$node.name node_url=$node.url_alias can_create_classes=$node.classes_js_array disable_createHere_menu=cond( $can_create_classes|eq("''"),"'child-menu-create-here'", '-1' ) }
<a href={$node.url_alias|ezurl} class="nodeicon" onclick="ezpopmenu_showTopLevel( event, 'SubitemsContextMenu', ez_createAArray( new Array( '%version%', {$:node.object.current_version}, '%nodeID%', {$:node.node_id}, '%objectID%', {$:node.object.id}, '%languages%', {$:node.object.language_js_array|wash}, '%classList%', {$can_create_classes|wash} ) ) , '{$:node.object.name|shorten(18)|wash(javascript)}', {$:node.node_id}, {$disable_createHere_menu}  ); return false;">{$node.class_identifier|class_icon( small, 'Click on the icon to display a context-sensitive menu.'|i18n( 'design/admin/node/view/line' ) )}</a>&nbsp;
{if $node_url}<a href={$node_url|ezurl} title="{'Node ID: %node_id Visibility: %node_visibility'|i18n( 'design/admin/node/view/line',, hash( '%node_id', $node.node_id, '%node_visibility', $node.hidden_status_string ) )}">{/if}{$node.data_map.name.data_text}{if ne($node.data_map.date_scheduled.data_int, 0)} (Scheduled: {$node.data_map.date_scheduled.data_int|datetime( 'custom', '%l %F %d %Y %h:%i:%s %a' )}){/if}{if $node_url}</a>{/if}{/default}
