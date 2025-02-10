<div class="viewer p-4"><h1>HTTP CRUD Database Lifecycle</h1>
<p>It’s important to understand how data <em>flows</em> through a typical web application.</p>
<p><img src="https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/hli3crD.png" alt="database flow"></p>
<ol>
<li>The front-end processes some data from user input - maybe a form is submitted.</li>
<li>The front-end sends that data to the server through an HTTP request - maybe a <code>POST</code>.</li>
<li>The server makes a SQL query to its database to create an associated record - Probably using an <code>INSERT</code> statement.</li>
<li>Once the server has processed that the database query was successful, it responds to the front-end with a status code! Hopefully a 200-level code (success)!</li>
</ol>
</div>

Q: A front-end typically communicates with a database directly to add new records.
- True
- False

Q: The 'Create' in CRUD maps to which SQL statement and HTTP Method?
- Select, Put
- Select, Get
- Insert, Post
- Insert, Get
