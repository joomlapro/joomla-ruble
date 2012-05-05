require 'ruble'

snippet t(:jiniheader) do |s|
	s.trigger = 'jiniheader'
	s.expansion = '; ${1:Hello}
; Copyright (C) ${2:2012 AtomTech, Inc}. All rights reserved.
; License GNU General Public License version 2 or later; see LICENSE.txt, see LICENSE.php
; Note : All ini files need to be saved as UTF-8 - No BOM

'
end

with_defaults :scope => 'text.xml' do
	
	snippet t(:jcomponentmanifest) do |s|
		s.trigger = 'jcomponentmanifest'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<extension type="component" version="2.5" method="upgrade">
	<name>${1:com_hello}</name>
	<author>${2:Bruno Batista}</author>
	<creationDate>$3</creationDate>
	<copyright>(C) ${4:2012 AtomTech, Inc}. All rights reserved.</copyright>
	<license>GNU General Public License version 2 or later; see LICENSE.txt</license>
	<authorEmail>${5:bruno@atomtech.com.br}</authorEmail>
	<authorUrl>http://www.${6:atomtech.com.br}</authorUrl>
	<version>2.5.0</version>
	<description>COM_${8:HELLO}_XML_DESCRIPTION</description>
	<install>
		<sql>
			<file driver="mysql" charset="utf8">sql/install.mysql.utf8.sql</file>
		</sql>
	</install>
	<uninstall>
		<sql>
			<file driver="mysql" charset="utf8">sql/uninstall.mysql.utf8.sql</file>
		</sql>
	</uninstall>
	<files folder="site">
		<folder>controllers</folder>
		<folder>helpers</folder>
		<folder>models</folder>
		<folder>views</folder>
		<filename>${9:hello}.php</filename>
		<filename>controller.php</filename>
		<filename>index.html</filename>
		<filename>router.php</filename>
	</files>
	<languages folder="site">
		<language tag="${11:pt-BR}">language/${11:pt-BR}.${1:com_hello}.ini</language>
	</languages>
	<administration>
		<menu img="class:${9:hello}">${1:com_hello}</menu>
		<submenu>
			<menu link="option=${1:com_hello}" view="${9:hello}" img="class:${9:hello}" alt="${10:Hello}/${10:Hello}">${1:com_hello}</menu>
			<menu link="option=com_categories&amp;extension=${1:com_hello}" view="categories" img="class:${9:hello}-cat" alt="${10:Hello}/Categories">${1:com_hello}_categories</menu>
		</submenu>
		<files folder="admin">
			<folder>controllers</folder>
			<folder>helpers</folder>
			<folder>models</folder>
			<folder>language</folder>
			<folder>sql</folder>
			<folder>tables</folder>
			<folder>views</folder>
			<filename>${9:hello}.php</filename>
			<filename>access.xml</filename>
			<filename>config.xml</filename>
			<filename>controller.php</filename>
			<filename>index.html</filename>
		</files>
		<languages folder="admin">
			<language tag="${11:pt-BR}">language/${11:pt-BR}.${1:com_hello}.ini</language>
			<language tag="${11:pt-BR}">language/${11:pt-BR}.${1:com_hello}.sys.ini</language>
		</languages>
	</administration>
</extension>
'
	end
	
	snippet t(:jmodulemanifest) do |s|
		s.trigger = 'jmodulemanifest'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<extension type="module" version="2.5" client="site" method="upgrade">
	<name>${1:mod_hello}</name>
	<author>${2:Bruno Batista}</author>
	<creationDate>$3</creationDate>
	<copyright>Copyright (C) ${4:2012 AtomTech, Inc}. All rights reserved.</copyright>
	<license>GNU General Public License version 2 or later; see LICENSE.txt</license>
	<authorEmail>${5:bruno@atomtech.com.br}</authorEmail>
	<authorUrl>http://www.${6:atomtech.com.br}</authorUrl>
	<version>2.5.0</version>
	<description>MOD_${7:HELLO}_XML_DESCRIPTION</description>
	<files>
		<filename module="${1:mod_hello}">${1:mod_hello}.php</filename>
		<folder>tmpl</folder>
		<filename>${1:mod_hello}.xml</filename>
		<filename>helper.php</filename>
		<filename>index.html</filename>
	</files>
	<languages>
		<language tag="${8:pt-BR}">${8:pt-BR}.${1:mod_hello}.ini</language>
		<language tag="${8:pt-BR}">${8:pt-BR}.${1:mod_hello}.sys.ini</language>
	</languages>
	<config>
		<fields name="params">
			<fieldset name="advanced">
				<field name="layout" type="modulelayout" label="JFIELD_ALT_LAYOUT_LABEL" description="JFIELD_ALT_MODULE_LAYOUT_DESC" />
				<field name="moduleclass_sfx" type="text" label="COM_MODULES_FIELD_MODULECLASS_SFX_LABEL" description="COM_MODULES_FIELD_MODULECLASS_SFX_DESC" />
				<field name="cache" type="list" default="1" label="COM_MODULES_FIELD_CACHING_LABEL" description="COM_MODULES_FIELD_CACHING_DESC">
					<option value="1">JGLOBAL_USE_GLOBAL</option>
					<option value="0">COM_MODULES_FIELD_VALUE_NOCACHING</option>
				</field>
				<field name="cache_time" type="text" default="900" label="COM_MODULES_FIELD_CACHE_TIME_LABEL" description="COM_MODULES_FIELD_CACHE_TIME_DESC" />
				<field name="cachemode" type="hidden" default="static">
					<option value="static"></option>
				</field>
			</fieldset>
		</fields>
	</config>
</extension>
'
	end
	
	snippet t(:jpluginmanifest) do |s|
		s.trigger = 'jpluginmanifest'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<extension version="2.5" type="plugin" group="user">
	<name>${1:plg_hello}</name>
	<author>${2:Bruno Batista}</author>
	<creationDate>$3</creationDate>
	<copyright>(C) ${4:2012 AtomTech, Inc}. All rights reserved.</copyright>
	<license>GNU General Public License version 2 or later; see LICENSE.txt</license>
	<authorEmail>${5:bruno@atomtech.com.br}</authorEmail>
	<authorUrl>http://www.${6:atomtech.com.br}</authorUrl>
	<version>2.5.0</version>
	<description>PLG_${7:HELLO}_XML_DESCRIPTION</description>
	<files>
		<filename plugin="${8:hello}">${8:hello}.php</filename>
		<filename>index.html</filename>
	</files>
	<languages>
		<language tag="${9:pt-BR}">${9:pt-BR}.${1:plg_hello}.ini</language>
		<language tag="${9:pt-BR}">${9:pt-BR}.${1:plg_hello}.sys.ini</language>
	</languages>
	<config>
		<fields name="params">
		</fields>
	</config>
</extension>
'
	end
	
	snippet t(:jtemplatemanifest) do |s|
		s.trigger = 'jtemplatemanifest'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE install PUBLIC "-//Joomla! 1.6//DTD template 1.0//EN" "http://www.joomla.org/xml/dtd/1.6/template-install.dtd">
<extension version="2.5" type="template" client="site">
	<name>${1:hello}</name>
	<creationDate>$2</creationDate>
	<author>${3:Bruno Batista}</author>
	<authorEmail>${4:bruno@atomtech.com.br}</authorEmail>
	<authorUrl>http://www.${5:atomtech.com.br}</authorUrl>
	<copyright>Copyright (C) ${6:2012 AtomTech, Inc}. All rights reserved.</copyright>
	<license>GNU General Public License version 2 or later; see LICENSE.txt</license>
	<version>2.5.0</version>
	<description>TPL_${7:HELLO}_XML_DESCRIPTION</description>
	<files>
		<folder>css</folder>
		<folder>html</folder>
		<folder>images</folder>
		<folder>js</folder>
		<folder>language</folder>
		<filename>component.php</filename>
		<filename>error.php</filename>
		<filename>favicon.ico</filename>
		<filename>index.html</filename>
		<filename>index.php</filename>
		<filename>template_preview.png</filename>
		<filename>template_thumbnail.png</filename>
		<filename>templateDetails.xml</filename>
	</files>
	<positions>
		<position>${1:hello}-mainmenu</position>
		<position>${1:hello}-search</position>
		<position>${1:hello}-sidebar</position>
		<position>${1:hello}-footer</position>
		<position>${1:hello}-footermenu</position>
	</positions>
	<languages folder="language">
		<language tag="${8:pt-BR}">${8:pt-BR}/${8:pt-BR}.tpl_${1:hello}.ini</language>
		<language tag="${8:pt-BR}">${8:pt-BR}/${8:pt-BR}.tpl_${1:hello}.sys.ini</language>
	</languages>
</extension>
'
	end
	
	snippet t(:jaccess) do |s|
		s.trigger = 'jaccess'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<access component="${1:com_hello}">
	<section name="component">
		<action name="core.admin" title="JACTION_ADMIN" description="JACTION_ADMIN_COMPONENT_DESC" />
		<action name="core.manage" title="JACTION_MANAGE" description="JACTION_MANAGE_COMPONENT_DESC" />
		<action name="core.create" title="JACTION_CREATE" description="JACTION_CREATE_COMPONENT_DESC" />
		<action name="core.delete" title="JACTION_DELETE" description="JACTION_DELETE_COMPONENT_DESC" />
		<action name="core.edit" title="JACTION_EDIT" description="JACTION_EDIT_COMPONENT_DESC" />
		<action name="core.edit.state" title="JACTION_EDITSTATE" description="JACTION_EDITSTATE_COMPONENT_DESC" />
	</section>
	<section name="category">
		<action name="core.create" title="JACTION_CREATE" description="COM_CATEGORIES_ACCESS_CREATE_DESC" />
		<action name="core.delete" title="JACTION_DELETE" description="COM_CATEGORIES_ACCESS_DELETE_DESC" />
		<action name="core.edit" title="JACTION_EDIT" description="COM_CATEGORIES_ACCESS_EDIT_DESC" />
		<action name="core.edit.state" title="JACTION_EDITSTATE" description="COM_CATEGORIES_ACCESS_EDITSTATE_DESC" />
	</section>
</access>
'
	end
	
	snippet t(:jconfig) do |s|
		s.trigger = 'jconfig'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<config>
	<fieldset name="permissions" label="JCONFIG_PERMISSIONS_LABEL" description="JCONFIG_PERMISSIONS_DESC">
		<field name="rules" type="rules" label="JCONFIG_PERMISSIONS_LABEL" class="inputbox" filter="rules" validate="rules" component="${1:com_hello}" section="component" />
	</fieldset>
</config>
'
	end
	
	snippet t(:jform) do |s|
		s.trigger = 'jform'
		s.expansion = '<?xml version="1.0" encoding="utf-8"?>
<form>
	<fieldset name="details" addfieldpath="/administrator/components/${1:com_hello}/models/fields">
		<field name="id" type="text" default="0" readonly="true" class="readonly" label="JGLOBAL_FIELD_ID_LABEL" description="JGLOBAL_FIELD_ID_DESC" />
		<field name="title" type="text" class="inputbox" size="40" label="JGLOBAL_TITLE" description="JFIELD_TITLE_DESC" required="true" />
		<field name="alias" type="text" class="inputbox" size="40" label="JFIELD_ALIAS_LABEL" description="JFIELD_ALIAS_DESC" />
		<field name="catid" type="categoryedit" extension="${1:com_hello}" label="JCATEGORY" description="COM_${2:HELLO}_FIELD_CATEGORY_DESC" class="inputbox" required="true" addfieldpath="/administrator/components/com_categories/models/fields"> >
		</field>
		<field name="published" type="list" label="JSTATUS" description="COM_${2:HELLO}_FIELD_STATE_DESC" class="inputbox" size="1" default="1">
			<option value="1">JPUBLISHED</option>
			<option value="0">JUNPUBLISHED</option>
			<option value="2">JARCHIVED</option>
			<option value="-2">JTRASHED</option>
		</field>
		<field name="ordering" type="ordering" class="inputbox" label="JFIELD_ORDERING_LABEL" description="JFIELD_ORDERING_DESC" />
		
		<field name="description" type="editor" label="JGLOBAL_DESCRIPTION" description="COM_${2:HELLO}_FIELD_DESCRIPTION_DESC" class="inputbox" filter="JComponentHelper::filterText" buttons="true" hide="readmore,pagebreak" />
	</fieldset>
	<fieldset name="publish">
		<field name="created" type="calendar" label="JGLOBAL_FIELD_CREATED_LABEL" description="JGLOBAL_FIELD_CREATED_DESC" class="inputbox" size="22" format="%Y-%m-%d %H:%M:%S" filter="user_utc" />
		<field name="created_by" type="user" label="JGLOBAL_FIELD_CREATED_BY_LABEL" description="JGLOBAL_FIELD_CREATED_BY_Desc" />
		<field name="modified" type="calendar" class="readonly" label="JGLOBAL_FIELD_MODIFIED_LABEL" description="COM_WEBLINKS_FIELD_MODIFIED_DESC" size="22" readonly="true" format="%Y-%m-%d %H:%M:%S" filter="user_utc" />
		<field name="modified_by" type="user" label="JGLOBAL_FIELD_MODIFIED_BY_LABEL" class="readonly" readonly="true" filter="unset" />
		<field name="checked_out" type="hidden" filter="unset" />
		<field name="checked_out_time" type="hidden" filter="unset" />
		<field name="publish_up" type="calendar" label="JGLOBAL_FIELD_PUBLISH_UP_LABEL" description="JGLOBAL_FIELD_PUBLISH_UP_DESC" class="inputbox" format="%Y-%m-%d %H:%M:%S" size="22" filter="user_utc" />
		<field name="publish_down" type="calendar" label="JGLOBAL_FIELD_PUBLISH_DOWN_LABEL" description="JGLOBAL_FIELD_PUBLISH_DOWN_DESC" class="inputbox" format="%Y-%m-%d %H:%M:%S" size="22" filter="user_utc" />
	</fieldset>
</form>
'
	end
end

with_defaults :scope => 'text.html - source' do
	
	snippet t(:jheader) do |s|
		s.trigger = 'jheader'
		s.expansion = '<?php
/**
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @copyright	Copyright (C) ${3:AtomTech}, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined(\'_JEXEC\') or die;

'
	end
end

with_defaults :scope => 'source.php' do
	
	snippet t(:jaddstyle) do |s|
		s.trigger = 'jaddstyle'
		s.expansion = '// Add style
\$doc = JFactory::getDocument();
\$doc->setTitle(JText::_(\'COM_${1:HELLO}_${2:HELLO}_TITLE\'));
\$doc->addStyleSheet(JURI::root() . \'media/${3:com_hello}/css/backend.css\');
'
	end
	
	snippet t(:jchecktoken) do |s|
		s.trigger = 'jchecktoken'
		s.expansion = '// Check for request forgeries.
JSession::checkToken() or jexit(JText::_(\'JINVALID_TOKEN\'));'
	end
	
	snippet t(:jcontrolleredit) do |s|
		s.trigger = 'jcontrolleredit'
		s.expansion = 'jimport(\'joomla.application.component.controllerform\');

/**
 * ${4:Hello} controller class.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}Controller${4:Hello} extends JControllerForm
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	2.5
	 */
	protected \$text_prefix = \'COM_${5:HELLO}_${6:HELLO}\';
	
}
'
	end
	
	snippet t(:jcontrollerlist) do |s|
		s.trigger = 'jcontrollerlist'
		s.expansion = 'jimport(\'joomla.application.component.controlleradmin\');

/**
 * ${4:Hello} list controller class.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}Controller${4:Hello} extends JControllerAdmin
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	2.5
	 */
	protected \$text_prefix = \'COM_${5:HELLO}_${5:HELLO}\';

	/**
	 * Constructor.
	 *
	 * @param	array	An optional associative array of configuration settings.
	 * @see		JController
	 * @since	2.5
	 */
	public function __construct(\$config = array())
	{
		parent::__construct(\$config);
	}

	/**
	 * Proxy for getModel.
	 * @since	2.5
	 */
	public function getModel(\$name = \'${6:Hello}\', \$prefix = \'${3:Hello}Model\', \$config = array(\'ignore_request\' => true))
	{
		\$model = parent::getModel(\$name, \$prefix, \$config);
		return \$model;
	}

}
'
	end
	
	snippet t(:jdbo) do |s|
		s.trigger = 'jdbo'
		s.expansion = '// Initialiase variables.
\$db = JFactory::getDbo();
// Use following line in a model.
//\$db = \$this->getDbo();
\$query = \$db->getQuery(true);

// Prepare query.
\$query->select(\'\');
\$query->from(\'#__\');
\$query->where(\'\');

// Inject the query and load the result.
\$db->setQuery(\$query);
\$result = \$db->loadObjectList();

// Check for errors.
if (\$error = \$db->getErrorMsg()) {
	\$this->setError(\$error);
	\$result = false;
	return \$result;
}
'
	end
	
	snippet t(:jdefaultview) do |s|
		s.trigger = 'jdefaultview'
		s.expansion = '/**
 * @var		string	The default view.
 * @since	2.5
 */
protected $default_view = \'$1\';
'
	end
	
	snippet t(:jdoc) do |s|
		s.trigger = 'jdoc'
		s.expansion = '<jdoc:include type="${1:component}" />'
	end
	
	snippet t(:jdocmessage) do |s|
		s.trigger = 'jdocmessage'
		s.expansion = '<?php
\$messages = \$app->getMessageQueue();

if (count(\$messages)) {
	foreach (\$messages as \$message) {
		\$html = \'<div class="alert alert-\' . strtolower(\$message[\'type\']) . \'">\';
		\$html .= \'<button data-dismiss="alert" class="close">×</button>\';
		\$html .= \'<strong>\' . JText::_(\'TPL_BOOTSTRAP_MESSAGE_\' . strtoupper(\$message[\'type\'])) . \'!</strong> \' . \$message[\'message\'];
		\$html .= \'</div>\';
		
		echo \$html;
	}
}
?>'
	end
	
	snippet t(:jdocmodules) do |s|
		s.trigger = 'jdocmodules'
		s.expansion = '<jdoc:include type="modules" name="${1:hello-mainmenu}" style="${2:none}" />'
	end
	
	snippet t(:jfield) do |s|
		s.trigger = 'jfield'
		s.expansion = '/**
 * Form Field ${3:Name} class.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class JFormField${3:Name} extends JFormField
{
	/**
	 * The field type.
	 *
	 * @var	string
	 */
	protected \$type = \'${3:Name}\';

	/**
	 * Method to get the field input.
	 *
	 * @return	string	The field input.
	 * @since	2.5
	 */
	protected function getInput()
	{
		\$return = \'\';

		return \$return;
	}
}
'
	end
	
	snippet t(:jfieldordering) do |s|
		s.trigger = 'jfieldordering'
		s.expansion = '/**
 * Supports an HTML select list of ${3:hellos}
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class JFormFieldOrdering extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected \$type = \'Ordering\';

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getInput()
	{
		// Initialize variables.
		\$html = array();
		\$attr = \'\';

		// Initialize some field attributes.
		\$attr .= \$this->element[\'class\'] ? \' class="\'.(string) \$this->element[\'class\'].\'"\' : \'\';
		\$attr .= ((string) \$this->element[\'disabled\'] == \'true\') ? \' disabled="disabled"\' : \'\';
		\$attr .= \$this->element[\'size\'] ? \' size="\'.(int) \$this->element[\'size\'].\'"\' : \'\';

		// Initialize JavaScript field attributes.
		\$attr .= \$this->element[\'onchange\'] ? \' onchange="\'.(string) \$this->element[\'onchange\'].\'"\' : \'\';

		// Get some field values from the form.
		\$${4:hello}Id	= (int) \$this->form->getValue(\'id\');
		\$categoryId	= (int) \$this->form->getValue(\'catid\');

		// Build the query for the ordering list.
		\$query = \'SELECT ordering AS value, ${6:title} AS text\' .
				\' FROM #__${5:hellos}\' .
				\' WHERE catid = \' . (int) \$categoryId .
				\' ORDER BY ordering\';

		// Create a read-only list (no ${6:title}) with a hidden input to store the value.
		if ((string) \$this->element[\'readonly\'] == \'true\') {
			\$html[] = JHtml::_(\'list.ordering\', \'\', \$query, trim(\$attr), \$this->value, \$${4:hello}Id ? 0 : 1);
			\$html[] = \'<input type="hidden" name="\'.\$this->${6:title}.\'" value="\'.\$this->value.\'"/>\';
		}
		// Create a regular list.
		else {
			\$html[] = JHtml::_(\'list.ordering\', \$this->${6:title}, \$query, trim(\$attr), \$this->value, \$${4:hello}Id ? 0 : 1);
		}

		return implode(\$html);
	}
}
'
	end
	
	snippet t(:jgetlayout) do |s|
		s.trigger = 'jgetlayout'
		s.expansion = 'require JModuleHelper::getLayoutPath(\'${1:mod_hello}\', $params->get(\'layout\', \'default\'));
'
	end
	
	snippet t(:jgetlist) do |s|
		s.trigger = 'jgetlist'
		s.expansion = '\$list = mod${1:Hello}Helper::getList(\$params);'
	end
	
	snippet t(:jgridsort) do |s|
		s.trigger = 'jgridsort'
		s.expansion = '<?php echo JHtml::_(\'grid.sort\', \'COM_${1:HELLO}_HEADING_${2:TITLE}\', \'a.${3:title}\', \$listDirn, \$listOrder); ?>'
	end
	
	snippet t(:jhelper) do |s|
		s.trigger = 'jhelper'
		s.expansion = '/**
 * ${3:Hello} component helper.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}Helper
{
	public static \$extension = \'${2:com_hello}\';

	/**
	 * Configure the Linkbar.
	 *
	 * @param	string	\$vName The name of the active view.
	 *
	 * @return	void
	 * @since	2.5
	 */
	public static function addSubmenu(\$vName)
	{
		JSubMenuHelper::addEntry(
			JText::_(\'COM_${5:HELLO}_SUBMENU_${5:HELLO}\'),
			\'index.php?option=${2:com_hello}&view=${4:hello}\',
			\$vName == \'${4:hello}\'
		);
		JSubMenuHelper::addEntry(
			JText::_(\'COM_${5:HELLO}_SUBMENU_CATEGORIES\'),
			\'index.php?option=com_categories&extension=${2:com_hello}\',
			\$vName == \'categories\'
		);
	}

	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return  JObject
	 */
	public static function getActions()
	{
		\$user		= JFactory::getUser();
		\$result	= new JObject;
		\$assetName	= \'${2:com_hello}\';

		\$actions = array(
			\'core.admin\', \'core.manage\', \'core.create\', \'core.edit\', \'core.edit.state\', \'core.delete\'
		);

		foreach (\$actions as \$action) {
			\$result->set(\$action, \$user->authorise(\$action, \$assetName));
		}

		return \$result;
	}
}
'
	end
	
	snippet t(:jhtmldate) do |s|
		s.trigger = 'jhtmldate'
		s.expansion = '<?php echo JHtml::_(\'date\', \$item->${1:created}, JText::_(\'${2:DATE_FORMAT_LC4}\')); ?>'
	end
	
	snippet t(:jitem) do |s|
		s.trigger = 'jitem'
		s.expansion = '<?php echo $item->${1:title}; ?>'
	end
	
	snippet t(:jlanguagelist) do |s|
		s.trigger = 'jlanguagelist'
		s.expansion = 'COM_${1:HELLO}${2:_VIEW}_N_ITEMS_ARCHIVED="%d ${3:Hellos} arquivados com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_ARCHIVED_0="Nenhum ${4:Hello} arquivado."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_ARCHIVED_1="1 ${4:Hello} arquivado com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_DELETED="%d ${3:Hellos} deletados com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_DELETED_0="Nenhum ${4:Hello} deletado."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_DELETED_1="1 ${4:Hello} deletado com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_PUBLISHED="%d ${3:Hellos} publicados com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_PUBLISHED_0="Nenhum ${4:Hello} publicado."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_PUBLISHED_1="1 ${4:Hello} publicado com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_TRASHED="%d ${3:Hellos} lixeira com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_TRASHED_0="Nenhum ${4:Hello} lixeira."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_TRASHED_1="1 ${4:Hello} lixeira com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_UNPUBLISHED="%d ${3:Hellos} despublicados com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_UNPUBLISHED_0="Nenhum ${4:Hello} despublicado."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_UNPUBLISHED_1="1 ${4:Hello} despublicado com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_CHECKED_IN="%d ${3:Hellos} desbloqueados com sucesso."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_CHECKED_IN_0="Nenhum ${4:Hello} desbloqueado."
COM_${1:HELLO}${2:_VIEW}_N_ITEMS_CHECKED_IN_1="1 ${4:Hello} desbloqueado com sucesso."'
	end
	
	snippet t(:jlayoutedit) do |s|
		s.trigger = 'jlayoutedit'
		s.expansion = 'JHtml::addIncludePath(JPATH_COMPONENT . \'/helpers/html\');
JHtml::_(\'behavior.tooltip\');
JHtml::_(\'behavior.formvalidation\');
\$canDo = ${1:Hello}Helper::getActions();
?>
<form action="<?php echo JRoute::_(\'index.php?option=${2:com_hello}&layout=edit&id=\'.(int) \$this->item->id); ?>" method="post" name="adminForm" id="${3:hello}-form" class="form-validate">
	<div class="width-60 fltlft">
		<fieldset class="adminform">
			<legend><?php echo empty(\$this->item->id) ? JText::_(\'COM_${4:HELLO}_${5:HELLO}_ADD\') : JText::sprintf(\'COM_${4:HELLO}_${5:HELLO}_EDIT\', \$this->item->id); ?></legend>
			<ul class="adminformlist">
				<?php if (\$this->item->id): ?>
					<li><?php echo \$this->form->getLabel(\'id\'); ?>
					<?php echo \$this->form->getInput(\'id\'); ?></li>
				<?php endif ?>

				<li><?php echo \$this->form->getLabel(\'title\'); ?>
				<?php echo \$this->form->getInput(\'title\'); ?></li>
				<li><?php echo \$this->form->getLabel(\'alias\'); ?>
				<?php echo \$this->form->getInput(\'alias\'); ?></li>
				<li><?php echo \$this->form->getLabel(\'catid\'); ?>
				<?php echo \$this->form->getInput(\'catid\'); ?></li>

				<?php if (\$canDo->get(\'core.edit.state\')) : ?>
					<li><?php echo \$this->form->getLabel(\'published\'); ?>
					<?php echo \$this->form->getInput(\'published\'); ?></li>
				<?php endif; ?>

				<li><?php echo \$this->form->getLabel(\'ordering\'); ?>
				<?php echo \$this->form->getInput(\'ordering\'); ?></li>
			</ul>
			<div class="clr"></div>
			<?php echo \$this->form->getLabel(\'description\'); ?>
			<div class="clr"></div>
			<?php echo \$this->form->getInput(\'description\'); ?>
		</fieldset>
	</div>
	<div class="width-40 fltrt">
		<?php echo \$this->loadTemplate(\'${6:publish}\'); ?>
	</div>
	<div>
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_(\'form.token\'); ?>
	</div>
	<div class="clr"></div>
</form>
'
	end
	
	snippet t(:jlayoutfieldset) do |s|
		s.trigger = 'jlayoutfieldset'
		s.expansion = '<fieldset class="panelform">
	<ul class="adminformlist">
		<?php foreach(\$this->form->getFieldset(\'${1:publish}\') as \$field): ?>
		<li><?php echo \$field->label; ?>
			<?php echo \$field->input; ?></li>
		<?php endforeach; ?>
	</ul>
</fieldset>'
	end
	
	snippet t(:jlayoutlist) do |s|
		s.trigger = 'jlayoutlist'
		s.expansion = 'JHtml::addIncludePath(JPATH_COMPONENT.\'/helpers/html\');
JHtml::_(\'behavior.tooltip\');
JHtml::_(\'behavior.multiselect\');

\$user		= JFactory::getUser();
\$userId	= \$user->get(\'id\');
\$listOrder	= \$this->escape(\$this->state->get(\'list.ordering\'));
\$listDirn	= \$this->escape(\$this->state->get(\'list.direction\'));
\$canOrder	= \$user->authorise(\'core.edit.state\', \'${1:com_hello}.category\');
\$saveOrder	= \$listOrder == \'a.ordering\';
\$params	= (isset(\$this->state->params)) ? \$this->state->params : new JObject();
?>
<form action="<?php echo JRoute::_(\'index.php?option=${1:com_hello}&view=${2:hellos}\'); ?>" method="post" name="adminForm" id="adminForm">
	<fieldset id="filter-bar">
		<div class="filter-search fltlft">
			<label class="filter-search-lbl" for="filter_search"><?php echo JText::_(\'JSEARCH_FILTER_LABEL\'); ?></label>
			<input type="text" name="filter_search" id="filter_search" value="<?php echo \$this->escape(\$this->state->get(\'filter.search\')); ?>" title="<?php echo JText::_(\'COM_${3:HELLO}_SEARCH_IN_TITLE\'); ?>" />
			<button type="submit"><?php echo JText::_(\'JSEARCH_FILTER_SUBMIT\'); ?></button>
			<button type="button" onclick="document.id(\'filter_search\').value=\'\';this.form.submit();"><?php echo JText::_(\'JSEARCH_FILTER_CLEAR\'); ?></button>
		</div>
		<div class="filter-select fltrt">
			<select name="filter_published" class="inputbox" onchange="this.form.submit()">
				<option value=""><?php echo JText::_(\'JOPTION_SELECT_PUBLISHED\');?></option>
				<?php echo JHtml::_(\'select.options\', JHtml::_(\'jgrid.publishedOptions\'), \'value\', \'text\', \$this->state->get(\'filter.published\'), true);?>
			</select>
			<select name="filter_category_id" class="inputbox" onchange="this.form.submit()">
				<option value=""><?php echo JText::_(\'JOPTION_SELECT_CATEGORY\');?></option>
				<?php echo JHtml::_(\'select.options\', JHtml::_(\'category.options\', \'${1:com_hello}\'), \'value\', \'text\', \$this->state->get(\'filter.category_id\'));?>
			</select>
		</div>
	</fieldset>
	<div class="clr"></div>
	<table class="adminlist">
		<thead>
			<tr>
				<th width="1%">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_(\'JGLOBAL_CHECK_ALL\'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th>
					<?php echo JHtml::_(\'grid.sort\',    \'JGLOBAL_TITLE\', \'a.title\', \$listDirn, \$listOrder); ?>
				</th>
				<th width="5%">
					<?php echo JHtml::_(\'grid.sort\', \'JSTATUS\', \'a.published\', \$listDirn, \$listOrder); ?>
				</th>
				<th width="10%">
					<?php echo JHtml::_(\'grid.sort\', \'JCATEGORY\', \'category_title\', \$listDirn, \$listOrder); ?>
				</th>
				<th width="10%">
					<?php echo JHtml::_(\'grid.sort\',    \'JGRID_HEADING_ORDERING\', \'a.ordering\', \$listDirn, \$listOrder); ?>
					<?php if (\$canOrder && \$saveOrder): ?>
						<?php echo JHtml::_(\'grid.order\',    \$this->items, \'filesave.png\', \'${2:hellos}.saveorder\'); ?>
					<?php endif;?>
				</th>
				<th width="1%" class="nowrap">
					<?php echo JHtml::_(\'grid.sort\', \'JGRID_HEADING_ID\', \'a.id\', \$listDirn, \$listOrder); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="13">
					<?php echo \$this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php foreach (\$this->items as \$i => \$item) :
			\$ordering = \$listOrder == \'a.ordering\';
			\$item->cat_link = JRoute::_(\'index.php?option=com_categories&extension=${1:com_hello}&task=edit&type=other&cid[]=\'. \$item->catid);
			\$canCreate = \$user->authorise(\'core.create\', \'${1:com_hello}.category.\'.\$item->catid);
			\$canEdit = \$user->authorise(\'core.edit\', \'${1:com_hello}.category.\'.\$item->catid);
			\$canCheckin = \$user->authorise(\'core.manage\', \'com_checkin\') || \$item->checked_out == \$userId || \$item->checked_out == 0;
			\$canChange = \$user->authorise(\'core.edit.state\', \'${1:com_hello}.category.\'.\$item->catid) && \$canCheckin;
			?>
			<tr class="row<?php echo \$i % 2; ?>">
				<td class="center">
					<?php echo JHtml::_(\'grid.id\', \$i, \$item->id); ?>
				</td>
				<td>
					<?php if (\$item->checked_out) : ?>
						<?php echo JHtml::_(\'jgrid.checkedout\', \$i, \$item->editor, \$item->checked_out_time, \'${2:hellos}.\', \$canCheckin); ?>
					<?php endif; ?>
					<?php if (\$canEdit) : ?>
						<a href="<?php echo JRoute::_(\'index.php?option=${1:com_hello}&task=${4:hello}.edit&id=\'.(int) \$item->id); ?>">
							<?php echo \$this->escape(\$item->title); ?></a>
					<?php else : ?>
							<?php echo \$this->escape(\$item->title); ?>
					<?php endif; ?>
					<p class="smallsub">
						<?php echo JText::sprintf(\'JGLOBAL_LIST_ALIAS\', \$this->escape(\$item->alias));?></p>
				</td>
				<td class="center">
					<?php echo JHtml::_(\'jgrid.published\', \$item->published, \$i, \'${2:hellos}.\', \$canChange, \'cb\', \$item->publish_up, \$item->publish_down); ?>
				</td>
				<td class="center">
					<?php echo \$this->escape(\$item->category_title); ?>
				</td>
				<td class="order">
					<?php if (\$canChange) : ?>
						<?php if (\$saveOrder) : ?>
							<?php if (\$listDirn == \'asc\') : ?>
								<span><?php echo \$this->pagination->orderUpIcon(\$i, (@\$this->items[\$i-1]->catid == \$item->catid), \'${2:hellos}.orderup\', \'JLIB_HTML_MOVE_UP\', \$ordering); ?></span>
								<span><?php echo \$this->pagination->orderDownIcon(\$i, \$this->pagination->total, (@\$this->items[\$i+1]->catid == \$item->catid), \'${2:hellos}.orderdown\', \'JLIB_HTML_MOVE_DOWN\', \$ordering); ?></span>
							<?php elseif (\$listDirn == \'desc\') : ?>
								<span><?php echo \$this->pagination->orderUpIcon(\$i, (@\$this->items[\$i-1]->catid == \$item->catid), \'${2:hellos}.orderdown\', \'JLIB_HTML_MOVE_UP\', \$ordering); ?></span>
								<span><?php echo \$this->pagination->orderDownIcon(\$i, \$this->pagination->total, (@\$this->items[\$i+1]->catid == \$item->catid), \'${2:hellos}.orderup\', \'JLIB_HTML_MOVE_DOWN\', \$ordering); ?></span>
							<?php endif; ?>
						<?php endif; ?>
						<?php \$disabled = \$saveOrder ?    \'\' : \'disabled="disabled"\'; ?>
						<input type="text" name="order[]" size="5" value="<?php echo \$item->ordering;?>" <?php echo \$disabled; ?> class="text-area-order" />
					<?php else : ?>
						<?php echo \$item->ordering; ?>
					<?php endif; ?>
				</td>
				<td class="center">
					<?php echo \$item->id; ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	<div>
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo \$listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo \$listDirn; ?>" />
		<?php echo JHtml::_(\'form.token\'); ?>
	</div>
</form>
'
	end
	
	snippet t(:jloadtemplate) do |s|
		s.trigger = 'jloadtemplate'
		s.expansion = '<?php echo \$this->loadTemplate(\'$1\'); ?>'
	end
	
	snippet t(:jmastercomponent) do |s|
		s.trigger = 'jmastercomponent'
		s.expansion = '// Access check.
if (!JFactory::getUser()->authorise(\'core.manage\', \'${1:com_hello}\')) {
	return JError::raiseWarning(404, JText::_(\'JERROR_ALERTNOAUTHOR\'));
}

// Include dependancies
jimport(\'joomla.application.component.controller\');

// Execute the task.
\$controller = JController::getInstance(\'${2:Hello}\');
\$controller->execute(JRequest::getCmd(\'task\'));
\$controller->redirect();
'
	end
	
	snippet t(:jmastercontroller) do |s|
		s.trigger = 'jmastercontroller'
		s.expansion = 'jimport(\'joomla.application.component.controller\');

/**
 * ${3:Hello} Component Controller
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 */
class ${3:Hello}Controller extends JController
{
	/**
	 * @var		string	The default view.
	 * @since	2.5
	 */
	protected \$default_view = \'${4:cpanel}\';

	/**
	 * Method to display a view.
	 *
	 * @param	boolean	If true, the view output will be cached
	 * @param	array	An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return	JController	This object to support chaining.
	 * @since   2.5
	 */
	public function display(\$cachable = false, \$urlparams = false)
	{
		require_once JPATH_COMPONENT.\'/helpers/${5:hello}.php\';

		// Load the submenu.
		${3:Hello}Helper::addSubmenu(JRequest::getCmd(\'view\', \'${4:cpanel}\'));

		\$view = JRequest::getCmd(\'view\', \'${4:cpanel}\');
		\$layout = JRequest::getCmd(\'layout\', \'default\');
		\$id = JRequest::getInt(\'id\');

		parent::display();

		return \$this;
	}
}
'
	end
	
	snippet t(:jmastercontrollerdisplay) do |s|
		s.trigger = 'jmastercontrollerdisplay'
		s.expansion = '/**
 * Method to display a view.
 *
 * @param	boolean	If true, the view output will be cached
 * @param	array	An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
 *
 * @return	JController	This object to support chaining.
 * @since	2.5
 */
public function display(\$cachable = false, \$urlparams = false)
{
	require_once JPATH_COMPONENT.\'/helpers/${1:hello}.php\';

	// Load the submenu.
	ContactHelper::addSubmenu(JRequest::getCmd(\'view\', \'${2:cpanel}\'));

	\$view = JRequest::getCmd(\'view\', \'${2:cpanel}\');
	\$layout = JRequest::getCmd(\'layout\', \'default\');
	\$id = JRequest::getInt(\'id\');

	parent::display();

	return \$this;
}
'
	end
	
	snippet t(:jmodeledit) do |s|
		s.trigger = 'jmodeledit'
		s.expansion = 'jimport(\'joomla.application.component.modeladmin\');

/**
 * ${4:Hello} model.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}Model${4:Hello} extends JModelAdmin
{
	/**
	 * Returns a reference to the a Table object, always creating it.
	 *
	 * @param	type	The table type to instantiate
	 * @param	string	A prefix for the table class name. Optional.
	 * @param	array	Configuration array for model. Optional.
	 * @return	JTable	A database object
	 * @since	2.5
	 */
	public function getTable(\$type = \'${4:Hello}\', \$prefix = \'${3:Hello}Table\', \$config = array())
	{
		return JTable::getInstance(\$type, \$prefix, \$config);
	}

	/**
	 * Method to get the record form.
	 *
	 * @param	array \$data Data for the form.
	 * @param	boolean \$loadData True if the form is to load its own data (default case), false if not.
	 * @return	mixed A JForm object on success, false on failure
	 * @since	2.5
	 */
	public function getForm(\$data = array(), \$loadData = true)
	{
		// Get the form.
		\$form = \$this->loadForm(\'${2:com_hello}.${5:hello}\', \'${5:hello}\', array(\'control\' => \'jform\', \'load_data\' => \$loadData));
		if (empty(\$form)) {
			return false;
		}

		return \$form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return	mixed	The data for the form.
	 * @since	2.5
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		\$data = JFactory::getApplication()->getUserState(\'${2:com_hello}.edit.${5:hello}.data\', array());

		if (empty(\$data)) {
			\$data = \$this->getItem();
		}

		return \$data;
	}
}
'
	end
	
	snippet t(:jmodellist) do |s|
		s.trigger = 'jmodellist'
		s.expansion = 'jimport(\'joomla.application.component.modellist\');

/**
 * Methods supporting a list of contact records.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}Model${4:Hellos} extends JModelList
{
	/**
	 * Constructor.
	 *
	 * @param	array	An optional associative array of configuration settings.
	 * @see		JController
	 * @since	2.5
	 */
	public function __construct(\$config = array())
	{
		if (empty(\$config[\'filter_fields\'])) {
			\$config[\'filter_fields\'] = array(
				\'id\', \'a.id\',
				\'title\', \'a.title\',
				\'alias\', \'a.alias\',
				\'catid\', \'a.catid\', \'category_title\',
				\'published\', \'a.published\',
				\'created\', \'a.created\',
				\'created_by\', \'a.created_by\',
				\'ordering\', \'a.ordering\'
			);
		}

		parent::__construct(\$config);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @return	void
	 * @since	2.5
	 */
	protected function populateState(\$ordering = null, \$direction = null)
	{
		// Initialise variables.
		\$app = JFactory::getApplication();

		// Adjust the context to support modal layouts.
		if (\$layout = JRequest::getVar(\'layout\')) {
			\$this->context .= \'.\'.\$layout;
		}

		\$search = \$this->getUserStateFromRequest(\$this->context.\'.filter.search\', \'filter_search\');
		\$this->setState(\'filter.search\', \$search);

		\$published = \$this->getUserStateFromRequest(\$this->context.\'.filter.published\', \'filter_published\', \'\');
		\$this->setState(\'filter.published\', \$published);

		\$categoryId = \$this->getUserStateFromRequest(\$this->context.\'.filter.category_id\', \'filter_category_id\');
		\$this->setState(\'filter.category_id\', \$categoryId);

		// List state information.
		parent::populateState(\'a.title\', \'asc\');
	}

	/**
	 * Method to get a store id based on model configuration state.\$
	 *
	 * This is necessary because the model is used by the component and
	 * different modules that might need different sets of data or different
	 * ordering requirements.
	 *
	 * @param	string	\$id	A prefix for the store id.
	 *
	 * @return	string	A store id.
	 * @since	2.5
	 */
	protected function getStoreId(\$id = \'\')
	{
		// Compile the store id.
		\$id .= \':\'.\$this->getState(\'filter.search\');
		\$id .= \':\'.\$this->getState(\'filter.published\');
		\$id .= \':\'.\$this->getState(\'filter.category_id\');

		return parent::getStoreId(\$id);
	}

	/**
	 * Build an SQL query to load the list data.
	 *
	 * @return	JDatabaseQuery
	 * @since	2.5
	 */
	protected function getListQuery()
	{
		// Create a new query object.
		\$db = \$this->getDbo();
		\$query = \$db->getQuery(true);
		\$user = JFactory::getUser();

		// Select the required fields from the table.
		\$query->select(
			\$this->getState(
				\'list.select\',
				\'a.id, a.catid, a.title, a.alias, a.description, a.checked_out, a.checked_out_time\' .
				\', a.published, a.created, a.created_by, a.ordering\'.
				\', a.publish_up, a.publish_down\'
			)
		);
		\$query->from(\'#__${5:table_name} AS a\');

		// Join over the users for the checked out user.
		\$query->select(\'uc.name AS editor\');
		\$query->join(\'LEFT\', \'#__users AS uc ON uc.id = a.checked_out\');

		// Join over the categories.
		\$query->select(\'c.title AS category_title\');
		\$query->join(\'LEFT\', \'#__categories AS c ON c.id = a.catid\');

		// Filter by published state
		\$published = \$this->getState(\'filter.published\');
		if (is_numeric(\$published)) {
			\$query->where(\'a.published = \' . (int) \$published);
		}
		elseif (\$published === \'\') {
			\$query->where(\'(a.published = 0 OR a.published = 1)\');
		}

		// Filter by a single or group of categories.
		\$categoryId = \$this->getState(\'filter.category_id\');
		if (is_numeric(\$categoryId)) {
			\$query->where(\'a.catid = \'.(int) \$categoryId);
		}
		elseif (is_array(\$categoryId)) {
			JArrayHelper::toInteger(\$categoryId);
			\$categoryId = implode(\',\', \$categoryId);
			\$query->where(\'a.catid IN (\'.\$categoryId.\')\');
		}

		// Filter by search in title.
		\$search = \$this->getState(\'filter.search\');
		if (!empty(\$search)) {
			if (stripos(\$search, \'id:\') === 0) {
				\$query->where(\'a.id = \'.(int) substr(\$search, 3));
			}
			else {
				\$search = \$db->Quote(\'%\'.\$db->escape(\$search, true).\'%\');
				\$query->where(\'(a.title LIKE \'.\$search.\' OR a.alias LIKE \'.\$search.\')\');
			}
		}

		// Add the list ordering clause.
		\$orderCol = \$this->state->get(\'list.ordering\', \'a.title\');
		\$orderDirn = \$this->state->get(\'list.direction\', \'asc\');
		if (\$orderCol == \'a.ordering\' || \$orderCol == \'category_title\') {
			\$orderCol = \'c.title \'.\$orderDirn.\', a.ordering\';
		}
		\$query->order(\$db->escape(\$orderCol.\' \'.\$orderDirn));

		//echo nl2br(str_replace(\'#__\',\'jos_\',\$query));
		return \$query;
	}
}
'
	end
	
	snippet t(:jmodule) do |s|
		s.trigger = 'jmodule'
		s.expansion = '// Include the syndicate functions only once
require_once dirname(__FILE__) . \'/helper.php\';

//\$list = mod${1:Hello}Helper::getList(\$params);
\$moduleclass_sfx = htmlspecialchars(\$params->get(\'moduleclass_sfx\'));

require JModuleHelper::getLayoutPath(\'${2:mod_hello}\', \$params->get(\'layout\', \'default\'));
'
	end
	
	snippet t(:jmodulehelper) do |s|
		s.trigger = 'jmodulehelper'
		s.expansion = '/**
 * ${1:Hello} module helper.
 *
 * @package		${1:Hello}
 * @subpackage	${2:mod_hello}
 * @since		2.5
 */
class Mod${1:Hello}Helper
{
	/**
	 * Get a list of the ${3:hello} items.
	 *
	 * @param	JRegistry	\$params	The module options.
	 *
	 * @return	array
	 * @since	2.5
	 */
	static function getList(&\$params)
	{
		// Initialiase variables.
		\$db = JFactory::getDbo();
		\$query = \$db->getQuery(true);
		
		// Prepare query.
		\$query->select(\'\');
		\$query->from(\'#__\');
		\$query->where(\'\');
		
		// Inject the query and load the items.
		\$db->setQuery(\$query);
		\$items = \$db->loadObjectList();
		
		// Check for errors.
		if (\$error = \$db->getErrorMsg()) {
			\$this->setError(\$error);
			\$items = false;
			return \$items;
		}
		
		return \$items;
	}
}
'
	end
	
	snippet t(:jpreparedocument) do |s|
		s.trigger = 'jpreparedocument'
		s.expansion = '/**
 * Prepares the document
 */
protected function _prepareDocument()
{
	\$app = JFactory::getApplication();
	\$menus = \$app->getMenu();
	\$pathway = \$app->getPathway();
	\$title = null;

	// Because the application sets a default page title,
	// we need to get it from the menu item itself
	\$menu = \$menus->getActive();

	if (\$menu) {
		\$this->params->def(\'page_heading\', \$this->params->get(\'page_title\', \$menu->title));
	}
	else {
		\$this->params->def(\'page_heading\', JText::_(\'COM_${1:HELLO}_DEFAULT_PAGE_TITLE\'));
	}

	\$title = \$this->params->get(\'page_title\', \'\');

	if (empty(\$title)) {
		\$title = \$app->getCfg(\'sitename\');
	}
	elseif (\$app->getCfg(\'sitename_pagetitles\', 0) == 1) {
		\$title = JText::sprintf(\'JPAGETITLE\', \$app->getCfg(\'sitename\'), \$title);
	}
	elseif (\$app->getCfg(\'sitename_pagetitles\', 0) == 2) {
		\$title = JText::sprintf(\'JPAGETITLE\', \$title, \$app->getCfg(\'sitename\'));
	}

	if (empty(\$title)) {
		\$title = \$this->item->name;
	}
	\$this->document->setTitle(\$title);

	if (\$this->item->metadesc)
	{
		\$this->document->setDescription(\$this->item->metadesc);
	}
	elseif (!\$this->item->metadesc && \$this->params->get(\'menu-meta_description\'))
	{
		\$this->document->setDescription(\$this->params->get(\'menu-meta_description\'));
	}

	if (\$this->item->metakey)
	{
		\$this->document->setMetadata(\'keywords\', \$this->item->metakey);
	}
	elseif (!\$this->item->metakey && \$this->params->get(\'menu-meta_keywords\'))
	{
		\$this->document->setMetadata(\'keywords\', \$this->params->get(\'menu-meta_keywords\'));
	}

	if (\$this->params->get(\'robots\'))
	{
		\$this->document->setMetadata(\'robots\', \$this->params->get(\'robots\'));
	}
}'
	end
	
	snippet t(:jsliders) do |s|
		s.trigger = 'jsliders'
		s.expansion = '<?php echo JHtml::_(\'sliders.start\', \'${1:hello}-sliders-\'.$this->item->id, array(\'useCookie\'=>1)); ?>

<?php echo JHtml::_(\'sliders.panel\', JText::_(\'${2:COM_HELLO_TITLE}\'), \'${3:class_name}\'); ?>


<?php echo JHtml::_(\'sliders.end\'); ?>'
	end
	
	snippet t(:jtable) do |s|
		s.trigger = 'jtable'
		s.expansion = 'jimport(\'joomla.application.component.model\');

/**
 * ${4:Hello} table class.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}Table${4:Hello} extends JTable
{
	/**
	 * Constructor
	 *
	 * @param	object	&\$db	JDatabase connector object.
	 *
	 * @since	2.5
	 */
	public function __construct(&\$db)
	{
		parent::__construct(\'#__${5:hellos}\', \'id\', \$db);
	}

	/**
	 * Method to bind an associative array or object to the JTable instance.    This
	 * method only binds properties that are publicly accessible and optionally
	 * takes an array of properties to ignore when binding.
	 *
	 * @param	array	\$array	Named array
	 * @param	mixed	\$ignore An optional array or space separated list of properties
	 *                                                    to ignore while binding. [optional]
	 *
	 * @return	mixed	Null if operation was satisfactory, otherwise returns an error string
	 *
	 * @since	2.5
	 */
	public function bind(\$array, \$ignore = \'\')
	{
		if (isset(\$array[\'params\']) && is_array(\$array[\'params\']))
		{
			\$registry = new JRegistry;
			\$registry->loadArray(\$array[\'params\']);
			\$array[\'params\'] = (string) \$registry;
		}

		return parent::bind(\$array, \$ignore);
	}

	/**
	 * Method to perform sanity checks on the JTable instance properties to ensure
	 * they are safe to store in the database.    Child classes should override this
	 * method to make sure the data they are storing in the database is safe and
	 * as expected before storage.
	 *
	 * @return	boolean	True if the instance is sane and able to be stored in the database.
	 *
	 * @since	2.5
	 */
	public function check()
	{
		if (trim(\$this->alias) == \'\')
		{
			\$this->alias = \$this->title;
		}

		\$this->alias = JApplication::stringURLSafe(\$this->alias);

		if (trim(str_replace(\'-\', \'\', \$this->alias)) == \'\')
		{
			\$this->alias = JFactory::getDate()->format(\'Y-m-d-H-i-s\');
		}

		return true;
	}

	/**
	 * Method to store a row in the database from the JTable instance properties.
	 * If a primary key value is set the row with that primary key value will be
	 * updated with the instance property values.    If no primary key value is set
	 * a new row will be inserted into the database with the properties from the
	 * JTable instance.
	 *
	 * @param	boolean	\$updateNulls True to update fields even if they are null. [optional]
	 *
	 * @return	boolean	True on success.
	 *
	 * @since	2.5
	 */
	public function store(\$updateNulls = false)
	{
		\$date = JFactory::getDate();
		\$user = JFactory::getUser();

		if (\$this->id)
		{
			// Existing item
			\$this->modified = \$date->toMySQL();
			\$this->modified_by = \$user->get(\'id\');
		}
		else
		{
			// New item. A filter\'s created field can be set by the user,
			// so we don\'t touch it if it is set.
			if (!intval(\$this->created))
			{
				\$this->created = \$date->toMySQL();
			}
			if (empty(\$this->created_by))
			{
				\$this->created_by = \$user->get(\'id\');
			}
		}

		// Verify that the alias is unique
		\$table = JTable::getInstance(\'${4:Hello}\', \'${3:Hello}Table\');
		if (\$table->load(array(\'alias\' => \$this->alias)) && (\$table->id != \$this->id || \$this->id == 0))
		{
			\$this->setError(JText::_(\'JLIB_DATABASE_ERROR_ARTICLE_UNIQUE_ALIAS\'));
			return false;
		}
		return parent::store(\$updateNulls);
	}
}
'
	end
	
	snippet t(:jtext) do |s|
		s.trigger = 'jtext'
		s.expansion = '<?php echo JText::_(\'$1\'); ?>'
	end
	
	snippet t(:jtoken) do |s|
		s.trigger = 'jtoken'
		s.expansion = '<?php echo JHtml::_(\'form.token\'); ?>'
	end

	snippet t(:jview) do |s|
		s.trigger = 'jview'
		s.expansion = 'jimport(\'joomla.application.component.view\');

/**
 * View class for a list of ${8:cpanel}.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}View${4:Cpanel} extends JView
{
	/**
	 * Method to display the view.
	 *
	 * @param	string	\$tpl	A template file to load. [optional]
	 *
	 * @return	mixed	A string if successful, otherwise a JError object.
	 *
	 * @since	1.6
	 */
	public function display(\$tpl = null)
	{
		// Check for errors.
		if (count(\$errors = \$this->get(\'Errors\')))
		{
			JError::raiseError(500, implode("\n", \$errors));
			return false;
		}

		\$this->addToolbar();
		// Include the component HTML helpers.
		JHtml::addIncludePath(JPATH_COMPONENT . \'/helpers/html\');

		parent::display(\$tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @return	void
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
		require_once JPATH_COMPONENT . \'/helpers/${5:hellos}.php\';

		\$canDo = ${3:Hello}Helper::getActions();
		JToolBarHelper::title(JText::_(\'COM_${6:HELLO}_${7:CPANEL}\'), \'${8:cpanel}.png\');

		if (\$canDo->get(\'core.admin\'))
		{
			JToolBarHelper::preferences(\'${2:com_hello}\');
			JToolBarHelper::divider();
		}
		JToolBarHelper::help(\'${8:cpanel}\', \$com = true);
	}
}
'
	end
	
	snippet t(:jviewedit) do |s|
		s.trigger = 'jviewedit'
		s.expansion = 'jimport(\'joomla.application.component.view\');

/**
 * View to edit a ${7:hellos}.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}View${4:Hello} extends JView
{
	protected \$form;
	protected \$item;
	protected \$state;

	/**
	 * Display the view
	 */
	public function display(\$tpl = null)
	{
		// Initialiase variables.
		\$this->form = \$this->get(\'Form\');
		\$this->item = \$this->get(\'Item\');
		\$this->state = \$this->get(\'State\');

		// Check for errors.
		if (count(\$errors = \$this->get(\'Errors\'))) {
			JError::raiseError(500, implode("\n", \$errors));
			return false;
		}

		\$this->addToolbar();
		
		parent::display(\$tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since 2.5
	 */
	protected function addToolbar()
	{
		JRequest::setVar(\'hidemainmenu\', true);

		\$user = JFactory::getUser();
		\$userId = \$user->get(\'id\');
		\$isNew = (\$this->item->id == 0);
		\$checkedOut= !(\$this->item->checked_out == 0 || \$this->item->checked_out == \$userId);
		// Since we don\'t track these assets at the item level, use the category id.
		\$canDo = ${3:Hello}Helper::getActions(\$this->item->catid,0);

		JToolBarHelper::title(\$isNew ? JText::_(\'COM_${5:HELLO}_${6:HELLO}_ADD\') : JText::_(\'COM_${5:HELLO}_${6:HELLO}_EDIT\'), \'${7:hellos}.png\');

		// If not checked out, can save the item.
		if (!\$checkedOut && (\$canDo->get(\'core.edit\') || count(\$user->getAuthorisedCategories(\'${2:com_hello}\', \'core.create\')) > 0)) {
			JToolBarHelper::apply(\'${8:hello}.apply\');
			JToolBarHelper::save(\'${8:hello}.save\');

			if (\$canDo->get(\'core.create\')) {
				JToolBarHelper::save2new(\'${8:hello}.save2new\');
			}
		}

		// If an existing item, can save to a copy.
		if (!\$isNew && \$canDo->get(\'core.create\')) {
			JToolBarHelper::save2copy(\'${8:hello}.save2copy\');
		}

		if (empty(\$this->item->id))    {
			JToolBarHelper::cancel(\'${8:hello}.cancel\');
		}
		else {
			JToolBarHelper::cancel(\'${8:hello}.cancel\', \'JTOOLBAR_CLOSE\');
		}

		JToolBarHelper::divider();
		JToolBarHelper::help(\'${8:hello}\', \$com = true);
	}
}
'
	end
	
	snippet t(:jviewlist) do |s|
		s.trigger = 'jviewlist'
		s.expansion = 'jimport(\'joomla.application.component.view\');

/**
 * View class for a list of ${5:hellos}.
 *
 * @package		${1:Hello}
 * @subpackage	${2:com_hello}
 * @since		2.5
 */
class ${3:Hello}View${4:Hellos} extends JView
{
	protected \$categories;
	protected \$items;
	protected \$pagination;
	protected \$state;

	/**
	 * Method to display the view.
	 *
	 * @param	string	\$tpl	A template file to load. [optional]
	 *
	 * @return	mixed	A string if successful, otherwise a JError object.
	 *
	 * @since	1.6
	 */
	public function display(\$tpl = null)
	{
		// Initialise variables.
		\$this->categories = \$this->get(\'CategoryOrders\');
		\$this->items = \$this->get(\'Items\');
		\$this->pagination = \$this->get(\'Pagination\');
		\$this->state = \$this->get(\'State\');

		// Check for errors.
		if (count(\$errors = \$this->get(\'Errors\')))
		{
			JError::raiseError(500, implode("\n", \$errors));
			return false;
		}

		\$this->addToolbar();
		// Include the component HTML helpers.
		JHtml::addIncludePath(JPATH_COMPONENT . \'/helpers/html\');

		parent::display(\$tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @return	void
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
		require_once JPATH_COMPONENT . \'/helpers/${5:hellos}.php\';

		\$canDo = ${3:Hello}Helper::getActions(\$this->state->get(\'filter.category_id\'));
		\$user = JFactory::getUser();
		JToolBarHelper::title(JText::_(\'COM_${6:HELLO}_MANAGER_${7:HELLOS}\'), \'${5:hellos}.png\');
		if (count(\$user->getAuthorisedCategories(\'${2:com_hello}\', \'core.create\')) > 0)
		{
			JToolBarHelper::addNew(\'${8:hello}.add\');
		}

		if ((\$canDo->get(\'core.edit\')))
		{
			JToolBarHelper::editList(\'${8:hello}.edit\');
		}

		if (\$canDo->get(\'core.edit.state\'))
		{
			if (\$this->state->get(\'filter.state\') != 2)
			{
				JToolBarHelper::divider();
				JToolBarHelper::publish(\'${5:hellos}.publish\', \'JTOOLBAR_PUBLISH\', true);
				JToolBarHelper::unpublish(\'${5:hellos}.unpublish\', \'JTOOLBAR_UNPUBLISH\', true);
			}

			if (\$this->state->get(\'filter.state\') != -1)
			{
				JToolBarHelper::divider();
				if (\$this->state->get(\'filter.state\') != 2)
				{
					JToolBarHelper::archiveList(\'${5:hellos}.archive\');
				}
				elseif (\$this->state->get(\'filter.state\') == 2)
				{
					JToolBarHelper::unarchiveList(\'${5:hellos}.publish\');
				}
			}
		}

		if (\$canDo->get(\'core.edit.state\'))
		{
			JToolBarHelper::checkin(\'${5:hellos}.checkin\');
		}

		if (\$this->state->get(\'filter.state\') == -2 && \$canDo->get(\'core.delete\'))
		{
			JToolBarHelper::deleteList(\'\', \'${5:hellos}.delete\', \'JTOOLBAR_EMPTY_TRASH\');
			JToolBarHelper::divider();
		}
		elseif (\$canDo->get(\'core.edit.state\'))
		{
			JToolBarHelper::trash(\'${5:hellos}.trash\');
			JToolBarHelper::divider();
		}

		if (\$canDo->get(\'core.admin\'))
		{
			JToolBarHelper::preferences(\'${2:com_hello}\');
			JToolBarHelper::divider();
		}
		JToolBarHelper::help(\'${5:hellos}\', \$com = true);
	}
}
'
	end
end