<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0">

  <p:input port="source"/>
  <p:output port="result"/>

  <p:insert match="/*" position="last-child">
    <p:with-input port="insertion">
      <!-- The <p:inline> element is optional here... -->
      <p:inline>
        <location>Berlin {year-from-date(current-date())}</location>
      </p:inline>
    </p:with-input>
  </p:insert>

</p:declare-step>
