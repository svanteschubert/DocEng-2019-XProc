<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0" name="add-attribute-pipeline">

  <p:input port="source"/>

  <p:output port="result" pipe="result@add-attribute-1"/>

  <p:add-attribute name="add-attribute-1">
    <p:with-input port="source" pipe="source@add-attribute-pipeline"/>
    <p:with-option name="match" select="'/*'"/>
    <p:with-option name="attribute-name" select="'timestamp'"/>
    <p:with-option name="attribute-value" select="current-dateTime()"/>
  </p:add-attribute>

</p:declare-step>
