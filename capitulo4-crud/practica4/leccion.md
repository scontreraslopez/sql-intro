<div class="viewer p-4"><h1>Auto Increment</h1>
<p>Many dialects of SQL support an <code>AUTO INCREMENT</code> feature. When inserting records into a table with <code>AUTO INCREMENT</code> enabled, the database will assign the next value <em>automatically</em>. In SQLite an integer <code>id</code> field that has the <code>PRIMARY KEY</code> constraint will auto increment by default!</p>
<details open="">
<summary>
<h2>Id’s</h2>
</summary>
<p>Depending on how your database is set up, you may be using traditional <code>id</code>s or you may be using <a href="https://en.wikipedia.org/wiki/Universally_unique_identifier" target="_blank" rel="noopener nofollow">UUIDs</a>. SQL doesn’t support auto incrementing a <code>uuid</code> so if your database is using them your server will have to handle the changing uuid’s for each record.</p>
</details>
<details open="">
<summary>
<h2>Using <code>AUTO INCREMENT</code> in SQLite</h2>
</summary>
<p>We are using traditional <code>id</code>s in our database, so we can take advantage of the auto increment feature. Different dialects of SQL will implement this feature differently, but in SQLite any column that has the <code>INTEGER PRIMARY KEY</code> constraint will auto increment! So we can omit the <code>id</code> field within the <code>INSERT</code> statement and allow the database to automatically add that field for us!</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>Let’s add some more records into our <code>users</code> table, but allow the database to automatically increment the <code>id</code> field. Add the following records to the database:</p>
<h3>Record 1</h3>
<ul>
<li><code>name</code>: Lance</li>
<li><code>age</code>: 20</li>
<li><code>country_code</code>:  US</li>
<li><code>username</code>: LanChr</li>
<li><code>password</code>: bootdevisbest</li>
<li><code>is_admin</code>: false</li>
</ul>
<h3>Record 2</h3>
<ul>
<li><code>name</code>: Tiffany</li>
<li><code>age</code>: 28</li>
<li><code>country_code</code>:  US</li>
<li><code>username</code>: Tifferoon</li>
<li><code>password</code>: autoincrement</li>
<li><code>is_admin</code>: true</li>
</ul>
</details>
</div>