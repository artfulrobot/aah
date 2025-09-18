<article>
<h2>Buttons from event screen</h2>
<div class="crm-actions-ribbon crm-event-manage-tab-actions-ribbon">
      <ul id="actions">
      <li><div id="crm-event-links-wrapper">
            <a id="crm-event-links-link" href="#" class="button"><span><i class="crm-i fa-bars" role="img" aria-hidden="true"></i>&nbsp; Event Links</span></a>
            <div class="ac_results" id="crm-event-links-list">
                 <div class="crm-event-links-list-inner">
                   <ul>
                    <li><a class="crm-event-participant" href="#">Register Participant</a></li>
                       <li><a class="crm-event-info" href="#" target="_blank">Event Info</a></li>
                                            <li><a class="crm-event-test" href="#">Online Registration (Test-drive)</a></li>
                               <li><a class="crm-event-live" href="#" target="_blank">Online Registration (Live)</a></li>
                                    </ul>
                 </div>
            </div>
        </div></li>

      <li><div id="crm-participant-wrapper">
            <a id="crm-participant-link" href="#" class="button"><span><i class="crm-i fa-bars" role="img" aria-hidden="true"></i>&nbsp; Find Participants</span></a>            <div class="ac_results" id="crm-participant-list">
                 <div class="crm-participant-list-inner">
                   <ul>
                              <li><a class="crm-participant-counted" href="#">Registered, Attended, Pending (pay later), Partially paid, Pending refund</a></li>
                                                  <li><a class="crm-participant-not-counted" href="#">No-show, Cancelled, Pending (incomplete transaction), Expired, Pending in cart, Invited, Declined, Transferred</a>
            </li>
                                                  </ul>
                 </div>
            </div>
        </div></li>

      <li><div>
          <a class="helpicon" title="Event Configuration Help" aria-label="Event Configuration Help" href="#" onclick="CRM.help(&quot;Event Configuration&quot;, {&quot;id&quot;:&quot;id-configure-events&quot;,&quot;isTemplate&quot;:0,&quot;participantListingURL&quot;:&quot;&quot;,&quot;isOnlineRegistration&quot;:1,&quot;eventId&quot;:128,&quot;file&quot;:&quot;CRM\/Event\/Form\/ManageEvent\/Tab&quot;}); return false;">&nbsp;</a>
      </div></li>
      </ul>
      <div class="clear"></div>
    </div> 

<!-- ------------------------------------ -->

<div class="crm-submit-buttons">


    <span class="crm-button crm-button-type-upload crm-button_qf_EventInfo_upload crm-i-button">
      <i class="crm-i fa-check" role="img" aria-hidden="true"></i>
      <input class="crm-form-submit default validate" accesskey="S" crm-icon="fa-check" name="_qf_EventInfo_upload" value="Save" type="submit" id="_qf_EventInfo_upload-top">
    </span>


    <span class="crm-button crm-button-type-upload crm-button_qf_EventInfo_upload_done crm-i-button">
      <i class="crm-i fa-check-circle" role="img" aria-hidden="true"></i>
      <input class="crm-form-submit validate" crm-icon="fa-check-circle" name="_qf_EventInfo_upload_done" value="Save and Done" type="submit" id="_qf_EventInfo_upload_done-top">
    </span>


    <span class="crm-button crm-button-type-cancel crm-button_qf_EventInfo_cancel crm-i-button">
      <i class="crm-i fa-times" role="img" aria-hidden="true"></i>
      <input class="crm-form-submit cancel" crm-icon="fa-times" name="_qf_EventInfo_cancel" value="Cancel" type="submit" id="_qf_EventInfo_cancel-top">
    </span>
    </div>


</article>
<!-- I don't know what normally does this JS, but this seems to be broadly equivalent for our purposes. -->
<script>
{literal}
document.addEventListener('DOMContentLoaded', function() {
  function toggle(e) {
    const r = e.currentTarget.parentNode.querySelector('.ac_results');
    if (r.style.display === 'block') { r.style.display = ''; }
    else { r.style.display = 'block'; }
  }

  document.getElementById('crm-event-links-link').addEventListener('click', toggle);
  document.getElementById('crm-participant-link').addEventListener('click', toggle);
});
{/literal}
</script>
