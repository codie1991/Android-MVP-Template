<?xml version="1.0"?>
<recipe>

  <#-- Create the directory -->
  <!-- <mkdir at="${escapeXmlAttribute(srcOut)}/${moduleName}" /> -->


  <instantiate
    from="root/res/layout/fragment_layout.xml.ftl"
    to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"
    />

  <#-- Instantiate the ftl files -->
  <instantiate
    from="root/src/app_package/Presenter.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${moduleName}Presenter.kt"
    />

  <instantiate
    from="root/src/app_package/Fragment.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${moduleName}Fragment.kt"
    />

  <instantiate
    from="root/src/app_package/Contract.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt"
    />

  <instantiate
    from="root/src/app_package/ViewModel.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${moduleName}ViewModel.kt"
    />

  <#-- Open the fragment file -->
  <open file="${escapeXmlAttribute(srcOut)}/${moduleName}Fragment.kt" />
</recipe>
