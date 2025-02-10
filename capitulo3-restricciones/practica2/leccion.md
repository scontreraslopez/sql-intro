<div class="viewer p-4"><h1>Constraints</h1>
<p>A <code>constraint</code> is a rule we create on a database that <em>enforces</em> some specific behavior. For example, setting a <code>NOT NULL</code> constraint on a column ensures that the column will not accept <code>NULL</code> values.</p>
<p>If we try to insert a <code>NULL</code> value into a column with the <code>NOT NULL</code> constraint, the insert will fail with an error message. Constraints are extremely useful when we need to <em>ensure</em> that certain kinds of data exist within our database.</p>
<details open="">
<summary>
<h2>Defining a NOT NULL Constraint</h2>
</summary>
<p>The <code>NOT NULL</code> constraint can be added directly to the <code>CREATE TABLE</code> statement.</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-create">CREATE</span> <span class="token keyword keyword-table">TABLE</span> employees<span class="token punctuation">(</span>
    id <span class="token keyword keyword-integer">INTEGER</span> <span class="token keyword keyword-primary">PRIMARY</span> <span class="token keyword keyword-key">KEY</span><span class="token punctuation">,</span>
    name <span class="token keyword keyword-text">TEXT</span> <span class="token keyword keyword-unique">UNIQUE</span><span class="token punctuation">,</span>
    <span class="token comment">-- The UNIQUE constraint ensures that no two rows can have the same value in the 'name' column</span>
    title <span class="token keyword keyword-text">TEXT</span> <span class="token operator">NOT</span> <span class="token boolean">NULL</span>
    <span class="token comment">-- The NOT NULL constraint ensures that the 'title' column cannot have NULL values</span>
<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="CREATE TABLE employees(
    id INTEGER PRIMARY KEY,
    name TEXT UNIQUE,
    -- The UNIQUE constraint ensures that no two rows can have the same value in the 'name' column
    title TEXT NOT NULL
    -- The NOT NULL constraint ensures that the 'title' column cannot have NULL values
);" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
</details>
<details open="">
<summary>
<h2>SQLite Limitation</h2>
</summary>
<p>In other dialects of SQL you can <code>ADD CONSTRAINT</code> within an <code>ALTER TABLE</code> statement. SQLite does <em>not</em> support this feature so when we create our tables we need to make sure we specify all the constraints we want! Here’s a <a href="https://www.sqlite.org/omitted.html" target="_blank" rel="noopener nofollow">list of SQL Features</a> SQLite does not implement in case you’re curious.</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Thankfully all the tables we have created for <em>CashPal</em> up to this point have been for testing purposes! Now that we have a better understanding of constraints, let’s rebuild our database with the proper constraints and tables!</p>
<p>Create the <code>users</code> table with the following fields and constraints:</p>
<ul>
<li><code>id</code> - <code>INTEGER</code>, <code>PRIMARY KEY</code></li>
<li><code>name</code> - <code>TEXT</code>, <code>NOT NULL</code></li>
<li><code>age</code> - <code>INTEGER</code>, <code>NOT NULL</code></li>
<li><code>country_code</code> - <code>TEXT</code>, <code>NOT NULL</code></li>
<li><code>username</code> - <code>TEXT</code>, <code>UNIQUE</code>, <code>NOT NULL</code></li>
<li><code>password</code> - <code>TEXT</code>, <code>NOT NULL</code></li>
<li><code>is_admin</code> - <code>BOOLEAN</code></li>
</ul>
</details>
</div>