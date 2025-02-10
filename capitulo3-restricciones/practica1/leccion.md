<div class="viewer p-4"><h1>Null Values</h1>
<p>In SQL, a cell with a <code>NULL</code> value indicates that the value is <em>missing</em>. A <code>NULL</code> value is <em>very</em> different from a <em>zero</em> value.</p>
<details open="">
<summary>
<h2>Constraints</h2>
</summary>
<p>When creating a table we can define whether or not a field <em>can</em> or <em>cannot</em> be <code>NULL</code>, and that’s a kind of <code>constraint</code>.</p>
<p>We will cover constraints in more detail soon, for now, let’s focus on <code>NULL</code> values.</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>We didn’t force any constraints on our tables when we created them and it has allowed for <code>NULL</code> entries to make their way into our table! Let’s take a look at our <code>transactions</code> table to see what those <code>NULL</code> values look like.</p>
<p>Write a query to <code>SELECT</code> all of the fields on all records of the <code>transactions</code> table.</p>
</details>
<details>
<summary>
<h2>Tip</h2>
</summary>
<p>Use the <code>*</code> (wildcard) syntax to select <em>all</em> fields.</p>
</details>
<details open="">
<summary>
<h2>Observe</h2>
</summary>
<p>Notice that both the <code>transaction_type</code> and <code>was_successful</code> fields have <code>NULL</code> values in all 3 records in the table (nulls are represented by blank cells in our system). That’s because we ran our migration in the previous exercise <em>after</em> the 3 records were created!</p>
</details>
</div>