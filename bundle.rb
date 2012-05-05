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
      submenu.separator
      submenu.command t(:jcontrolleredit)
      submenu.command t(:jcontrollerlist)
    end
    main_menu.menu t(:jmodule) do |submenu|
      submenu.command t(:jmodulemanifest)
      submenu.separator
    end
    main_menu.menu t(:jplugin) do |submenu|
      submenu.command t(:jpluginmanifest)
      submenu.separator
    end
    main_menu.menu t(:jtemplate) do |submenu|
      submenu.command t(:jtemplatemanifest)
      submenu.separator
    end
    main_menu.menu t(:jtemplate) do |submenu|
      submenu.command t(:jtemplatemanifest)
      submenu.separator
    end
    main_menu.menu t(:jmisc) do |submenu|
      submenu.command t(:jaddstyle)
      submenu.command t(:jchecktoken)
      submenu.separator
    end
  end
end