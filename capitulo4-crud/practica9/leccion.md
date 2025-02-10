<div class="viewer p-4"><h1>WHERE Clause</h1>
<p>In order to keep learning about CRUD operations in SQL, we need to learn how to make the instructions we send to the database more specific. SQL accepts a <code>WHERE</code> statement within a query that allows us to be very specific with our instructions.</p>
<p>If we were unable to specify the specific record we wanted to <code>READ</code>, <code>UPDATE</code>, or <code>DELETE</code> making queries to a database would be very frustrating, and very inefficient.</p>
<details open="">
<summary>
<h2>Using a WHERE Clause</h2>
</summary>
<p>Say we had <em>over 9000</em> records in our <code>users</code> table. We often want to look at specific user data within that table without retrieving <em>all</em> the other records in the table. We can use a <code>SELECT</code> statement followed by a <code>WHERE</code> clause to specify which records to retrieve. The <code>SELECT</code> statement stays the same, we just <em>add</em> the <code>WHERE</code> clause to the end of the <code>SELECT</code>. Here’s an example:</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> name <span class="token keyword keyword-from">FROM</span> users <span class="token keyword keyword-where">WHERE</span> power_level <span class="token operator">&gt;=</span> <span class="token number">9000</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="SELECT name FROM users WHERE power_level >= 9000;" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<p>This will select only the <code>name</code> field of any user within the <code>users</code> table <code>WHERE</code> the <code>power_level</code> field is greater than or equal to <code>9000</code>.</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>We need to know the <code>username</code> of all the users in our <code>users</code> table that have admin privileges! Retrieve them.</p>
</details>
</div>