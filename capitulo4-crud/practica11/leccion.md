<div class="viewer p-4"><h1>DELETE</h1>
<p>When a user deletes their account on Twitter, or deletes a comment on a YouTube video, that data needs to be removed from its respective database.</p>
<details open="">
<summary>
<h2>DELETE Statement</h2>
</summary>
<p>A <code>DELETE</code> statement removes all records from a table that match the <code>WHERE</code> clause. As an example:</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-delete">DELETE</span> <span class="token keyword keyword-from">FROM</span> employees
    <span class="token keyword keyword-where">WHERE</span> id <span class="token operator">=</span> <span class="token number">251</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="DELETE FROM employees
    WHERE id = 251;" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<p>This <code>DELETE</code> statement removes all records from the <code>employees</code> table that have an id of <code>251</code>!</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Samantha, one of our <em>CashPal</em> users, has opted to delete her account and stop using our app… which makes us sad. Anyways, we need to remove her record from the database!</p>
<p>Delete Samantha’s record from the user table.</p>
<h3>Current State of the <code>users</code> Table</h3>
<table>
<thead>
<tr>
<th>ID</th>
<th>NAME</th>
<th>AGE</th>
<th>country_code</th>
<th>USERNAME</th>
<th>PASSWORD</th>
<th>is_admin</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>David</td>
<td>34</td>
<td>US</td>
<td>DavidDev</td>
<td>insertPractice</td>
<td>0</td>
</tr>
<tr>
<td>2</td>
<td>Samantha</td>
<td>29</td>
<td>BR</td>
<td>Sammy93</td>
<td>addingRecords!</td>
<td>0</td>
</tr>
<tr>
<td>3</td>
<td>John</td>
<td>39</td>
<td>CA</td>
<td>Jjdev21</td>
<td>welovebootdev</td>
<td>0</td>
</tr>
<tr>
<td>4</td>
<td>Ram</td>
<td>42</td>
<td>IN</td>
<td>Ram11c</td>
<td>thisSQLcourserocks</td>
<td>0</td>
</tr>
<tr>
<td>5</td>
<td>Hunter</td>
<td>30</td>
<td>US</td>
<td>Hdev92</td>
<td>backendDev</td>
<td>0</td>
</tr>
<tr>
<td>6</td>
<td>Allan</td>
<td>27</td>
<td>US</td>
<td>Alires</td>
<td>iLoveB00tdev</td>
<td>1</td>
</tr>
<tr>
<td>7</td>
<td>Lance</td>
<td>20</td>
<td>US</td>
<td>LanChr</td>
<td>b00tdevisbest</td>
<td>0</td>
</tr>
<tr>
<td>8</td>
<td>Tiffany</td>
<td>28</td>
<td>US</td>
<td>Tifferoon</td>
<td>autoincrement</td>
<td>1</td>
</tr>
<tr>
<td>9</td>
<td>Lane</td>
<td>27</td>
<td>US</td>
<td>wagslane</td>
<td>update_me</td>
<td>0</td>
</tr>
</tbody>
</table>
</details>
</div>