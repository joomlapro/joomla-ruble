require 'ruble'

bundle do |bundle|
  bundle.display_name = t(:bundle_name)
  bundle.author = 'Bruno Batista'
  bundle.description =  <<END
Joomla Ruble. Bundle by:
http://www.joomlapro.com.br/ - Bruno Batista
END

  bundle.repository = 'git://github.com/joomlapro/joomla.ruble.git'

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.menu t(:jcomponent) do |submenu|
      submenu.command t(:jcomponentmanifest)
      submenu.command t(:jaccess)
      submenu.command t(:jconfig)
      submenu.command t(:jform)
      submenu.separator
      submenu.command t(:jmastercomponent)
      submenu.command t(:jmastercontroller)
      submenu.command t(:jmastercontrollerdisplay)
      submenu.separator
      submenu.command t(:jcontrolleredit)
      submenu.command t(:jcontrollerlist)
      submenu.command t(:jdefaultview)
      submenu.separator
      submenu.command t(:jhelper)
      submenu.separator
      submenu.command t(:jmodeledit)
      submenu.command t(:jmodellist)
      submenu.separator
      submenu.command t(:jtable)
      submenu.separator
      submenu.command t(:jview)
      submenu.command t(:jviewedit)
      submenu.command t(:jviewlist)
      submenu.command t(:jpreparedocument)
      submenu.separator
      submenu.command t(:jfield)
      submenu.command t(:jfieldordering)
      submenu.separator
      submenu.command t(:jlayoutedit)
      submenu.command t(:jlayoutlist)
      submenu.command t(:jlayoutfieldset)
      submenu.command t(:jloadtemplate)
      submenu.command t(:jitem)
      submenu.command t(:jgridsort)
    end
    main_menu.menu t(:jmodule) do |submenu|
      submenu.command t(:jmodulemanifest)
      submenu.separator
      submenu.command t(:jmodule)
      submenu.command t(:jmodulehelper)
      submenu.command t(:jgetlayout)
      submenu.command t(:jgetlist)
    end
    main_menu.menu t(:jplugin) do |submenu|
      submenu.command t(:jpluginmanifest)
      submenu.separator
    end
    main_menu.menu t(:jtemplate) do |submenu|
      submenu.command t(:jtemplatemanifest)
      submenu.separator
      submenu.command t(:jdoc)
      submenu.command t(:jdocmodules)
      submenu.command t(:jdocmessage)
    end
    main_menu.menu t(:jlanguage) do |submenu|
      submenu.command t(:jlanguagelist)
    end
    main_menu.menu t(:jmisc) do |submenu|
      submenu.command t(:jheader)
      submenu.separator
      submenu.command t(:jdbo)
      submenu.command t(:jiniheader)
      submenu.command t(:jtext)
      submenu.command t(:jaddstyle)
      submenu.command t(:jchecktoken)
      submenu.command t(:jhtmldate)
      submenu.command t(:jsliders)
      submenu.command t(:jtoken)
    end
  end
end