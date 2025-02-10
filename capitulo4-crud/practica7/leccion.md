<div class="viewer p-4"><h1>Count</h1>
<p>We can use a <code>SELECT</code> statement to get a <em>count</em> of the records within a table. This can be very useful when we need to know <em>how many</em> records there are, but we don’t particularly care what’s in them.</p>
<p>Here’s an example in SQLite:</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> <span class="token function">COUNT</span><span class="token punctuation">(</span><span class="token operator">*</span><span class="token punctuation">)</span> <span class="token keyword keyword-from">FROM</span> employees<span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="SELECT COUNT(*) FROM employees;" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<p>The <code>*</code> in this case refers to a column name. We don’t care about the count of a <em>specific column</em> - we want to know the number of <em>total records</em> so we can use the wildcard (*).</p>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Here is the current state of our <code>users</code> table:</p>
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
</tbody>
</table>
<p>Our business strategy team at CashPal wants to know how many users of the app we have. We can’t use the <code>id</code> number to calculate the count because user accounts can be deleted!</p>
<p>Use a <code>COUNT(*)</code> statement to retrieve the number of records in the <code>users</code> table.</p>
<p><em>Note: In this course, stick to using <code>*</code> with <code>COUNT</code> unless the instructions specifically say to count a particular column.</em></p>
</details>
</div>