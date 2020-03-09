
<article>
  <h1>Buttons as found on a contact screen</h1>
{literal}
<div class="crm-actions-ribbon">
  <ul id="actions">

    <li class="crm-contact-activity crm-summary-block">
      <div id="crm-contact-actions-wrapper" data-edit-params="{&quot;cid&quot;: &quot;260&quot;, &quot;class_name&quot;: &quot;CRM_Contact_Page_Inline_Actions&quot;}">
        <a id="crm-contact-actions-link" href="#" class="button"><span><i class="crm-i fa-bars"></i>&nbsp;     Actions  </span></a>          <div class="ac_results" id="crm-contact-actions-list">
          <div class="crm-contact-actions-list-inner">
            <div class="crm-contact_activities-list">

              <ul>
                <li class="crm-activity-tab"><a href="#" data-tab="activity">Record Activity:</a></li>
                <li class="crm-activity-type_68">
                  <a href="#" data-tab="activity">
                    <i class="crm-i fa-plus-square-o"></i> Volunteer Commendation
                  </a>
                </li>
                <li class="crm-activity-type_67">
                  <a href="#" data-tab="activity">
                    <i class="crm-i fa-plus-square-o"></i> Volunteer
                  </a>
                </li>
                <li class="crm-activity-type_1">
                  <a href="#" data-tab="activity">
                    <i class="crm-i fa-slideshare"></i> Meeting
                  </a>
                </li>
                <li class="crm-activity-type_2">
                  <a href="#" data-tab="activity">
                    <i class="crm-i fa-phone"></i> Phone Call
                  </a>
                </li>
                <li class="crm-activity-type_22">
                  <a href="#" data-tab="activity">
                    <i class="crm-i fa-file-pdf-o"></i> Print/Merge Document
                  </a>
                </li>
                <li class="crm-activity-type_55">
                  <a href="#" data-tab="activity">
                    <i class="crm-i fa-comment-o"></i> Interview
                  </a>
                </li>


              </ul>

            </div>
            <div class="crm-contact_print-list">
              <ul class="contact-print">
                <li class="crm-contact-crm-contact-print">
                  <a href="#" title="Print Summary" data-tab="print" class="print">
                    <span><i class="crm-i fa-print"></i> Print Summary</span>
                  </a>
                </li>
                <li class="crm-contact-crm-contact-vcard">
                  <a href="#" title="vCard" data-tab="vcard" class="vcard">
                    <span><i class="crm-i fa-list-alt"></i> vCard</span>
                  </a>
                </li>
                <li class="crm-contact-crm-contact-dashboard">
                  <a href="#" title="Contact Dashboard" data-tab="dashboard" class="dashboard">
                    <span><i class="crm-i fa-tachometer"></i> Contact Dashboard</span>
                  </a>
                </li>
                <li class="crm-contact-crm-contact-user-add">
                  <a href="#" title="Create User Record" data-tab="user-add" class="user-add">
                    <span><i class="crm-i fa-user-plus"></i> Create User Record</span>
                  </a>
                </li>
              </ul>
            </div>
            <div class="crm-contact_actions-list">
              <ul class="contact-actions">
                <li class="crm-action-new-contribution">
                  <a href="#" title="Add Contribution" data-tab="contribute">Add Contribution</a>
                </li>
                <li class="crm-action-new-participant">
                  <a href="#" title="Register for Event" data-tab="participant">Register for Event</a>
                </li>
                <li class="crm-action-new-pledge">
                  <a href="#" title="Add Pledge" data-tab="pledge">Add Pledge</a>
                </li>
                <li class="crm-action-new-membership">
                  <a href="#" title="Add Membership" data-tab="member">Add Membership</a>
                </li>
                <li class="crm-action-new-case">
                  <a href="#" title="Add Case" data-tab="case">Add Case</a>
                </li>
                <li class="crm-action-new-grant">
                  <a href="#" title="Add Grant" data-tab="grant">Add Grant</a>
                </li>
                <li class="crm-action-new-relationship">
                  <a href="#" title="Add Relationship" data-tab="rel">Add Relationship</a>
                </li>
                <li class="crm-action-new-note">
                  <a href="#" title="Add Note" data-tab="note" class="medium-popup">Add Note</a>
                </li>
                <li class="crm-action-group-add-contact">
                  <a href="#" title="Add to Group" data-tab="group">Add to Group</a>
                </li>
                <li class="crm-action-tag-contact">
                  <a href="#" title="Tag Contact" data-tab="tag">Tag Contact</a>
                </li>
              </ul>
            </div>
            <div class="clear"></div>
          </div>
        </div>
      </div>
    </li>
    <li>
      <a class="button edit" href="#"><span><i class="crm-i fa-pencil"></i>&nbsp;                 Edit              </span></a>            </li>
    <li class="crm-delete-action crm-contact-delete">
      <a class="button delete" href="#"><span><i class="crm-i fa-trash"></i>&nbsp;               Delete Contact            </span></a>          </li>
  </ul>
  <div class="clear"></div>
</div>

{/literal}
</article>

<article>
  <h1>Other buttons</h1>
  <div>
    <p>Without .btn</p>
    <button class="crm-button btn-secondary">Secondary</button> <button class="crm-button btn-primary">Primary</button>

    <p>With .btn</p>
    <button class="crm-button btn btn-secondary">Secondary</button>
    <button class="crm-button btn btn-primary">Primary</button>
    <a class="button edit" href="#"><span><i class="crm-i fa-pencil"></i>&nbsp; Edit </span></a> </li>

    <p>APIv4 explorer</p>
    <button class="btn btn-success crm-button" crm-icon="fa-bolt" disabled="disabled"><i class="crm-i fa-bolt"></i> Execute</button>
    <button class="btn btn-success crm-button" crm-icon="fa-bolt" ><i class="crm-i fa-bolt"></i> Execute</button>

    <p>span buttons with submit inside (e.g. search form submits)</p>
    <div>
      <span class="crm-button crm-i-button"><i class="crm-i fa-pencil"></i>
        <input type="submit" onclick="event.preventDefault()" class="crm-form-submit default validate" value="Some Action" />
      </span>
    </div>

    <p>link buttons exist somewhere, too</p>
    <div>
      <a class="crm-button"><span><i class="crm-i fa-pencil"></i>Edit</span></a>
    </div>
  </div>
</article>

<article>
<h1>Notifications</h1>

<div class="message status no-popup">
  <div class="icon inform-icon"></div>
  No contributions have been recorded from this contact.
</div>

<div class="messages error no-popup">
  Some error (I'm not sure if this construct is in use in CiviCRM Core. Maybe a Drupal thing)
</div>

<p>#help</p>
<div id="help" class="description section-hidden-border">Administer your CiviCRM site using the links on this page. Click <img src="http://localhost:8080/sites/all/modules/civicrm/i/TreePlus.gif" alt="plus sign" style="vertical-align: bottom; height: 20px; width: 20px;"> for descriptions of the options in each section.</div>
<p>.help</p>
<div class="help">
  Click <a class="action-item" href>Record Contribution</a> to record a new contribution received from this contact.
  Click <a class="action-item" href>Submit Credit Card Contribution</a> to process a new contribution on behalf of the contributor using their credit card.
</div>

</article>

