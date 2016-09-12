<h3>Personal Campaign Pages created by this contact</h3>

<table style="width:100%">
  <tr>
    <th>Title</th>
    <th>Status</th> 
    <th>Goal</th>
    <th>Contribution Page/Event ID</th>
  </tr>
  
  {foreach from=$result.values key=k item=foo}
  
  <tr>
  	<td><a href="/civicrm/pcp/info?reset=1&id={$foo.id}">{$foo.title}</td>
  	{if $foo.status_id == 2}
  	<td>Approved</td>
  	{else}
    <td>Not Approved</td>
	{/if}
  	<td>{$foo.goal_amount}</td>
  	<td><a href="/civicrm/contribute/transact?reset=1&id={$foo.page_id}">{$foo.page_id}</td>
  	<td><a href="/civicrm/pcp/info?action=update&reset=1&id={$foo.id}">Edit</td>
  	
  	
  </tr>
  {/foreach}
  
  </table>
  
</table>

