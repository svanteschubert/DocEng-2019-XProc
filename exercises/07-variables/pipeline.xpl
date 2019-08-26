<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0">

  <p:input port="source"/>
  <p:output port="result"/>
  
  <p:option name="username"/>

  <p:variable name="id" select="upper-case($username) || '-' || p:system-property('p:episode')" />

  <p:add-attribute match="/*" attribute-name="id" attribute-value="{$id}"/>

</p:declare-step>
