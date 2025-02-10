<div class="viewer p-4"><h1>Insert Statement</h1>
<p>Tables are pretty useless without data in them! In SQL we can add records to a table using an <code>INSERT INTO</code> statement. When using an <code>INSERT</code> statement we must first specify the <code>table</code> we are inserting the record into, followed by the <code>fields</code> within that table we want to add <code>VALUES</code> to.</p>
<p>Example <code>INSERT INTO</code> statement:</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-insert">INSERT</span> <span class="token keyword keyword-into">INTO</span> employees<span class="token punctuation">(</span>id<span class="token punctuation">,</span> name<span class="token punctuation">,</span> title<span class="token punctuation">)</span>
<span class="token keyword keyword-values">VALUES</span> <span class="token punctuation">(</span><span class="token number">1</span><span class="token punctuation">,</span> <span class="token string">'Allan'</span><span class="token punctuation">,</span> <span class="token string">'Engineer'</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="INSERT INTO employees(id, name, title)
VALUES (1, 'Allan', 'Engineer');" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Let’s start manually adding some of the records to our <code>users</code> table!</p>
<p>Take a look at the <code>CREATE TABLE</code> statement in the <em>setup code</em> in the <code>up.sql</code> tab for the <code>users</code> table structure, and use that information to insert the following records into the table:</p>
<h3>Record 1</h3>
<ul>
<li><code>id</code>: 1</li>
<li><code>name</code>: David</li>
<li><code>age</code>: 34</li>
<li><code>country_code</code>:  US</li>
<li><code>username</code>: DavidDev</li>
<li><code>password</code>: insertPractice</li>
<li><code>is_admin</code>: false</li>
</ul>
<h3>Record 2</h3>
<ul>
<li><code>id</code>: 2</li>
<li><code>name</code>: Samantha</li>
<li><code>age</code>: 29</li>
<li><code>country_code</code>:  BR</li>
<li><code>username</code>: Sammy93</li>
<li><code>password</code>: addingRecords!</li>
<li><code>is_admin</code>: false</li>
</ul>
</details>
</div>