<div class="row">
  <div class="well span8 offset2">
    <legend> {L_464} </legend>
    <!-- IF ERROR ne '' -->
    <div class="alert"> {ERROR} </div>
    <!-- ENDIF -->
    <form name="adsearch" method="post" action="">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <label> {L_1000}</label>
      <input type="text" size="45" name="title">
      <br />
      <label class="checkbox inline  c-margin">
      <input name="desc" type="checkbox" value="y">
      {L_1001} </label>
      <label class="checkbox inline c-margin">
      <input name="closed" type="checkbox" id="closed" value="y">
      {L_25_0214} </label>
      <br />
      <br />
      <label>{L_1002}</label>
      {CATEGORY_LIST}
      <hr />
      <label>{L_1003}</label>
      <br />
      <div > {L_1004}
        <input class="input-small" type="text" maxlength="12" name="minprice">
        {L_1005}
        <input type="text" class="input-small" maxlength="12" name="maxprice" size="5">
        {CURRENCY} </div>
      <hr />
      <label>{L_2__0025}</label>
      <br />
      <label class="checkbox inline c-margin">
      <INPUT TYPE="checkbox" name="buyitnow" value="y">
      {L_30_0100}</label>
      <label class="checkbox inline c-margin">
      <INPUT TYPE="checkbox" name="buyitnowonly" value="y">
      {L_30_0101}</label>
      <hr />
      <label>{L_1006}</label>
      {PAYMENTS_LIST}
      <hr />
      <label>{L_125}</label>
      <input type="text" name="seller">
      <label>{L_1008}</label>
      {COUNTRY_LIST}
      <label>{L_012}</label>
      <input type="text" name="zipcode" size="12">
      <label>{L_1009}</label>
      <select name="ending" size="1">
        <option></option>
        <option value="1">{L_1010}</option>
        <option value="2">{L_1011}</option>
        <option value="4">{L_1012}</option>
        <option value="6">{L_1013}</option>
      </select>
      <label>{L_1014}</label>
      <select name="SortProperty" size="1">
        <option></option>
        <option value="ends">{L_1015}</option>
        <option value="starts">{L_1016}</option>
        <option value="min_bid">{L_1017}</option>
        <option value="max_bid">{L_1018}</option>
      </select>
      <label> {L_718} </label>
      <select name="type" size="1">
        <option></option>
        <option value="2">{L_1020}</option>
        <option value="1">{L_1021}</option>
      </select>
      <div class="form-actions">
        <input name="action" type="hidden" value="search">
        <input type="submit" name="go" value="{L_5029}" class="btn btn-primary">
      </div>
    </form>
  </div>
</div>
