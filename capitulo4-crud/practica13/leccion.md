<div class="viewer p-4"><h1>Update Query in SQL</h1>
<p>Whenever you update your profile picture or change your password online, you are changing the data in a field on a table in a database! Imagine if every time you accidentally messed up a Tweet on Twitter you had to delete the entire tweet and post a new one instead of just editing it…</p>
<p>…Well, that’s a bad example.</p>
<details open="">
<summary>
<h2>Update Statement</h2>
</summary>
<p>The <code>UPDATE</code> statement in SQL allows us to update the fields of a record. We can even update many records depending on how we write the statement.</p>
<p>An <code>UPDATE</code> statement specifies the table that needs to be updated, followed by the fields and their new values by using the <code>SET</code> keyword. Lastly a <code>WHERE</code> clause indicates the record(s) to update.</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-update">UPDATE</span> employees
<span class="token keyword keyword-set">SET</span> job_title <span class="token operator">=</span> <span class="token string">'Backend Engineer'</span><span class="token punctuation">,</span> salary <span class="token operator">=</span> <span class="token number">150000</span>
<span class="token keyword keyword-where">WHERE</span> id <span class="token operator">=</span> <span class="token number">251</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="UPDATE employees
SET job_title = 'Backend Engineer', salary = 150000
WHERE id = 251;" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>We need to update Lane’s record in our user table, he founded CashPal but he’s not even recognized as an admin!</p>
<p><code>UPDATE</code> Lane’s record within the <code>users</code> table so that the <code>is_admin</code> field is set to <code>true</code>!</p>
<p>Here is the current state of the <code>USERS</code> table for reference!</p>
<table>
<thead>
<tr>
<th>id</th>
<th>name</th>
<th>age</th>
<th>country_code</th>
<th>username</th>
<th>password</th>
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