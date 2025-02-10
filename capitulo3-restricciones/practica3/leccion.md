<div class="viewer p-4"><h1>Primary Keys</h1>
<p>A <em>key</em> defines and protects relationships between tables. A <a href="https://en.wikipedia.org/wiki/Primary_key" target="_blank" rel="noopener nofollow"><code>primary key</code></a> is a special column that uniquely identifies records within a table. Each table can have one, and only one primary key.</p>
<details open="">
<summary>
<h2>Your Primary Key Will Almost Always Be the “id” Column</h2>
</summary>
<p>It’s <em>very</em> common to have a column named <code>id</code> on each table in a database, and that <code>id</code> is the primary key for that table. No two rows in that table can share an <code>id</code>.</p>
<p>A <code>PRIMARY KEY</code> constraint can be explicitly specified on a column to ensure uniqueness, rejecting any inserts where you attempt to create a duplicate ID.</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Run the code. Notice that there’s a bug - there is a violation of a <code>PRIMARY KEY</code> constraint on the <code>id</code> column. <em>Fix the data that’s being inserted.</em></p>
<p>When working with integer ids, it’s best practice to increment the <code>id</code> by <code>1</code> for each successive insert. Follow this convention when fixing the bug.</p>
</details>
</div>