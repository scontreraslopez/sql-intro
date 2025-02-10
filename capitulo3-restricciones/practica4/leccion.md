<div class="viewer p-4"><h1>Foreign Keys</h1>
<p>Foreign keys are what makes relational databases relational! Foreign keys define the relationships <em>between</em> tables. Simply put, a <code>FOREIGN KEY</code> is a field in one table that references another table’s <code>PRIMARY KEY</code>.</p>
<details open="">
<summary>
<h2>Creating a Foreign Key in SQLite</h2>
</summary>
<p>Creating a <code>FOREIGN KEY</code> in SQLite happens at table creation! After we define the table fields and constraints we add a named <code>CONSTRAINT</code> where we define the <code>FOREIGN KEY</code> column and its <code>REFERENCES</code>.</p>
<p>Here’s an example:</p>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-create">CREATE</span> <span class="token keyword keyword-table">TABLE</span> departments <span class="token punctuation">(</span>
    id <span class="token keyword keyword-integer">INTEGER</span> <span class="token keyword keyword-primary">PRIMARY</span> <span class="token keyword keyword-key">KEY</span><span class="token punctuation">,</span>
    department_name <span class="token keyword keyword-text">TEXT</span> <span class="token operator">NOT</span> <span class="token boolean">NULL</span>
<span class="token punctuation">)</span><span class="token punctuation">;</span>

<span class="token keyword keyword-create">CREATE</span> <span class="token keyword keyword-table">TABLE</span> employees <span class="token punctuation">(</span>
    id <span class="token keyword keyword-integer">INTEGER</span> <span class="token keyword keyword-primary">PRIMARY</span> <span class="token keyword keyword-key">KEY</span><span class="token punctuation">,</span>
    name <span class="token keyword keyword-text">TEXT</span> <span class="token operator">NOT</span> <span class="token boolean">NULL</span><span class="token punctuation">,</span>
    department_id <span class="token keyword keyword-integer">INTEGER</span><span class="token punctuation">,</span>
    <span class="token keyword keyword-constraint">CONSTRAINT</span> fk_departments
    <span class="token keyword keyword-foreign">FOREIGN</span> <span class="token keyword keyword-key">KEY</span> <span class="token punctuation">(</span>department_id<span class="token punctuation">)</span>
    <span class="token keyword keyword-references">REFERENCES</span> departments<span class="token punctuation">(</span>id<span class="token punctuation">)</span>
<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    CONSTRAINT fk_departments
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
);" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<p>In this example, an <code>employee</code> has a <code>department_id</code>. The <code>department_id</code> must be the same as the <code>id</code> field of a record from the <code>departments</code> table. <code>fk_departments</code> is the specified name of the <a href="https://www.sqlite.org/lang_createtable.html#constraint_enforcement" target="_blank" rel="noopener nofollow">constraint</a>.</p>
<ol>
<li>
<p><code>CONSTRAINT fk_departments</code>: create a constraint called <code>fk_departments</code></p>
</li>
<li>
<p><code>FOREIGN KEY (department_id)</code>: make this constraint a foreign key assigned to the <code>department_id</code> field</p>
</li>
<li>
<p><code>REFERENCES departments(id)</code>: link the foreign field <code>id</code> from the <code>departments</code> table</p>
</li>
</ol>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Our <code>users</code> table stores the country our users are from in a <code>country_code</code> field. We need some additional data about countries like their name, but we don’t want to bloat our <code>users</code> table with all that country data.</p>
<p>The “locations” team at CashPal has created a “countries” table, and we can link a user to their country by setting a foreign key in the <code>users</code> table. Creating a foreign key without the <code>CONSTRAINT</code> keyword means the name of the constraint is auto-assigned.</p>
<p>Take a look at the code. There’s an issue with the <code>INSERT</code> statements again! Fix up the data so no foreign key constraints are violated. You’ll need to reference the <em>setup</em> in the <code>up.sql</code> tab in the code editor.</p>
</details>
</div>