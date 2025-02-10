<div class="viewer p-4"><h1>Missing Constraint</h1>
<p>CashPal has a table called <code>banking_institutions</code> that stores information related to banks in the area. A couple of CashPal users have called and left concerned messages because they’ve noticed incorrect bank info on some of their statements. You’ve been asked to take a look at the <code>banking_institutions</code> table and figure out if something is wrong with the table’s constraints.</p>
<details open="">
<summary>
<h2>Suspicious Records</h2>
</summary>
<table>
<thead>
<tr>
<th>id</th>
<th>name</th>
<th>location</th>
<th>routing_number</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>Bank of Boots</td>
<td>San Diego</td>
<td>4567777</td>
</tr>
<tr>
<td>1</td>
<td>Central Savings</td>
<td>Los Angeles</td>
<td>1234567</td>
</tr>
<tr>
<td>2</td>
<td>Metro Trust Bank</td>
<td>San Francisco</td>
<td>7890123</td>
</tr>
<tr>
<td>3</td>
<td>Star Finance Corp</td>
<td>Sacramento</td>
<td>5678901</td>
</tr>
<tr>
<td>3</td>
<td>Golden State Bank</td>
<td>San Jose</td>
<td>9876543</td>
</tr>
</tbody>
</table>
</details>
<details open="">
<summary>
<h2>Challenge</h2>
</summary>
<p>Using the <code>up.sql</code> file tab and the example output above, determine which field is missing an important constraint. Because SQLite does not support adding constraints with <code>ALTER TABLE</code>, you’ll have to make a new table called <code>banks</code>. It should have all the same fields as the original table but updated with the missing constraint. Don’t worry about inserting any records, we’ll learn how to do that later.</p>
<p><em>Note: <code>INT</code> is valid, but the assignment expects <code>INTEGER</code>, so use <code>INTEGER</code> instead of <code>INT</code> to pass this assignment.</em></p>
</details>
</div>