<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0">

  <p:input port="source"/>

  <p:output port="result"/>

  <p:add-attribute>
    <p:with-option name="match" select="'/*'"/>
    <p:with-option name="attribute-name" select="'timestamp'"/>
    <p:with-option name="attribute-value" select="current-dateTime()"/>
  </p:add-attribute>

  <p:add-attribute>
    <p:with-option name="match" select="'/*'"/>
    <p:with-option name="attribute-name" select="'enabled'"/>
    <p:with-option name="attribute-value" select="true()"/>
  </p:add-attribute>

</p:declare-step>
