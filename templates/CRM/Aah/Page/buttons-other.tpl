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
