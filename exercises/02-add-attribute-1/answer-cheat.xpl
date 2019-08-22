<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0" name="add-attribute-pipeline">

  <p:input port="source"/>

  <p:output port="result">
    <p:pipe step="add-attribute-2" port="result"/>
  </p:output>

  <p:add-attribute name="add-attribute-1">
    <p:with-input port="source">
      <p:pipe step="add-attribute-pipeline" port="source"/>
    </p:with-input>
    <p:with-option name="match" select="'/*'"/>
    <p:with-option name="attribute-name" select="'timestamp'"/>
    <p:with-option name="attribute-value" select="current-dateTime()"/>
  </p:add-attribute>
  
  <p:add-attribute name="add-attribute-2">
    <p:with-input port="source">
      <p:pipe step="add-attribute-1" port="result"/>
    </p:with-input>
    <p:with-option name="match" select="'/*'"/>
    <p:with-option name="attribute-name" select="'enabled'"/>
    <p:with-option name="attribute-value" select="true()"/>
  </p:add-attribute>

</p:declare-step>
