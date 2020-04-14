<article>
  <h1>crm-collapsible e.g. Custom field accordion on Contact summary screen</h1>
  {literal}
  <div class="customFieldGroup crm-collapsible ui-corner-all constituent_information crm-custom-set-block-1 collapsed">
    <div class="collapsible-title">
      Constituent Information
    </div>
    <div class="crm-summary-block" id="custom-set-block-1--1" style="display: none;">
      <div id="custom-set-content-1" class="crm-inline-edit" data-edit-params="{&quot;cid&quot;: &quot;14&quot;, &quot;class_name&quot;: &quot;CRM_Contact_Form_Inline_CustomData&quot;, &quot;groupID&quot;: &quot;1&quot;, &quot;customRecId&quot;: &quot;-1&quot;, &quot;cgcount&quot; : &quot;1&quot;}" data-dependent-fields="[&quot;#crm-communication-pref-content&quot;]">
        <div class="crm-clear crm-inline-block-content" title="Edit">
          <div class="crm-edit-help">
            <span class="crm-i fa-pencil"></span> Edit      </div>

          <div class="crm-summary-row">
            <div class="crm-label">Most Important Issue</div>
            <div class="crm-content crm-custom-data"></div>
          </div>
          <div class="crm-summary-row">
            <div class="crm-label">Marital Status</div>
            <div class="crm-content crm-custom-data"></div>
          </div>
          <div class="crm-summary-row">
            <div class="crm-label">Marriage Date</div>
            <div class="crm-content crm-custom-data"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  {/literal}
</article>


<article>
  <h1>crm-collapsible In a .crm-form-block</h1>
  {literal}
  <div class="crm-form-block">
    <div class="crm-collapsible collapsed">
      <div class="collapsible-title">
        Constituent Information
      </div>
      <div class="crm-summary-block" style="display: none;">
        <p>here is the content.</p>
        <p>here is the content.</p>
      </div>
    </div>
  </div>
  {/literal}
</article>


<article>
  <h1>Weird nested accordion - find contacts page</h1>
  <div class="crm-block crm-form-block ">
    <div class="crm-accordion-wrapper crm-case_search-accordion collapsed">
      <div class="crm-accordion-header crm-master-accordion-header">Edit Search Criteria</div><!-- /.crm-accordion-header -->
      <div class="crm-accordion-body" >
        <p>here's the content</p>
        <p>here's the content</p>
      </div><!-- /.crm-accordion-body -->
    </div><!-- /.crm-accordion-wrapper -->
  </div>
</article>

<article>
  <h1>Fieldset accordions - event online registration page</h1>
  <fieldset id="registration" class="crm-collapsible  collapsed" style="display: block;">
    <legend class="collapsible-title">Registration Screen</legend>
    <div id="registration_screen" style="display: none;">
      <p>Here is the content</p>
      <table class="form-layout-compressed">
        <tbody><tr class="crm-event-manage-registration-form-block-intro_text">
          <td scope="row" class="label" width="20%"><label for="intro_text">Introductory Text</label> </td>
          <td>
          <p>etc.</p>
      </tr></tbody></table>
    </div>
</fieldset>
</article>
