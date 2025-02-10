<div class="viewer p-4"><h1>HTTP CRUD Database Lifecycle</h1>
<p>We talked about how a “create” operation flows through a web application. Let’s talk about a “read”.</p>
<p><img src="https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/KTDQGy1.png" alt="read lifecycle"></p>
<p>Let’s talk through an example using the CashPal app. Our product manager wants to show profile data on a user’s settings page. Here’s how we could engineer that feature request:</p>
<ol>
<li>First, the front-end webpage loads.</li>
<li>The front-end sends an HTTP <code>GET</code> request to a <code>/users</code> endpoint on the back-end server.</li>
<li>The server receives the request.</li>
<li>The server uses a <code>SELECT</code> statement to retrieve the user’s record from the <code>users</code> table in the database.</li>
<li>The server converts the row of SQL data into a <code>JSON</code> object and sends it back to the front-end.</li>
</ol>
</div>The HTTP Method that generally corresponds with a SQL SELECT statement is an HTTP

Q: The HTTP Method that generally corresponds with a SQL SELECT statement is an HTTP

- Update
- Put
- Patch
- Get


Q: Which happens first?

- A SELECT statement is executed
- A JSON response is sent
- A GET request is made

