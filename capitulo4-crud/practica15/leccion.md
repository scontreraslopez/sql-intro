<div class="viewer p-4"><h1>Object-Relational Mapping (ORMs)</h1>
<p>An <a href="https://en.wikipedia.org/wiki/Object%E2%80%93relational_mapping" target="_blank" rel="noopener nofollow">Object-Relational Mapping</a> or an <em>ORM</em> for short, is a tool that allows you to perform CRUD operations on a database using a traditional programming language. These typically come in the form of a library or framework that you would use in your backend code.</p>
<p>The primary benefit an ORM provides is that it maps your database records to in-memory objects. For example, in Go we might have a struct that we use in our code:</p>

<div style="position: relative">
	<pre class="language-go" tabindex="0"><code class="language-go"><span class="token tag">type</span> User <span class="token tag">struct</span> <span class="token punctuation">{</span>
    ID <span class="token builtin">int</span>
    Name <span class="token builtin">string</span>
    IsAdmin <span class="token builtin">bool</span>
<span class="token punctuation">}</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="type User struct {
    ID int
    Name string
    IsAdmin bool
}" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<p>This struct definition conveniently represents a database table called <code>users</code>, and an <em>instance</em> of the struct represents a row in the table.</p>
<details open="">
<summary>
<h2>Example: Using an ORM</h2>
</summary>
<p>Using an ORM we might be able to write simple code like this:</p>

<div style="position: relative">
	<pre class="language-go" tabindex="0"><code class="language-go">user <span class="token operator">:=</span> User<span class="token punctuation">{</span>
    ID<span class="token punctuation">:</span> <span class="token number">10</span><span class="token punctuation">,</span>
    Name<span class="token punctuation">:</span> <span class="token string">"Lane"</span><span class="token punctuation">,</span>
    IsAdmin<span class="token punctuation">:</span> <span class="token boolean">false</span><span class="token punctuation">,</span>
<span class="token punctuation">}</span>

<span class="token comment">// generates a SQL statement and runs it,</span>
<span class="token comment">// creating a new record in the users table</span>
db<span class="token punctuation">.</span><span class="token function">Create</span><span class="token punctuation">(</span>user<span class="token punctuation">)</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="user := User{
    ID: 10,
    Name: &quot;Lane&quot;,
    IsAdmin: false,
}

// generates a SQL statement and runs it,
// creating a new record in the users table
db.Create(user)" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
</details>
<details open="">
<summary>
<h2>Example: Using Straight SQL</h2>
</summary>
<p>Using straight SQL we might have to do something a bit more manual:</p>

<div style="position: relative">
	<pre class="language-go" tabindex="0"><code class="language-go">user <span class="token operator">:=</span> User<span class="token punctuation">{</span>
    ID<span class="token punctuation">:</span> <span class="token number">10</span><span class="token punctuation">,</span>
    Name<span class="token punctuation">:</span> <span class="token string">"Lane"</span><span class="token punctuation">,</span>
    IsAdmin<span class="token punctuation">:</span> <span class="token boolean">false</span><span class="token punctuation">,</span>
<span class="token punctuation">}</span>

db<span class="token punctuation">.</span><span class="token function">Exec</span><span class="token punctuation">(</span><span class="token string">"INSERT INTO users (id, name, is_admin) VALUES (?, ?, ?);"</span><span class="token punctuation">,</span>
    user<span class="token punctuation">.</span>ID<span class="token punctuation">,</span> user<span class="token punctuation">.</span>Name<span class="token punctuation">,</span> user<span class="token punctuation">.</span>IsAdmin<span class="token punctuation">)</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="user := User{
    ID: 10,
    Name: &quot;Lane&quot;,
    IsAdmin: false,
}

db.Exec(&quot;INSERT INTO users (id, name, is_admin) VALUES (?, ?, ?);&quot;,
    user.ID, user.Name, user.IsAdmin)" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
</details>
<details open="">
<summary>
<h2>Should You Use an ORM?</h2>
</summary>
<p>That depends! An ORM typically <em>trades simplicity for control</em>.</p>
<p>Using straight SQL you can take full advantage of the power of the SQL language. Using an ORM, you’re limited by whatever functionality the ORM has. If you run into issues with a specific query, it can be harder to debug with an ORM because you have to dig through the framework’s code and documentation to figure out how the underlying queries are being generated.</p>
<p>I recommend doing projects <em>both ways</em> so that you can learn about the tradeoffs. At the end of the day, when you’re working on a team of developers it will be a team decision.</p>
</details>
</div>

Q: When using an ORM, you ____

- Write a lot of raw  SQL
- Call methods and functions made available via the ORM's API

One advantage of an ORM is that it...

- Makes your code less verbose
- Is easier to debug at a low-level
- Gives you more control over your database
- Ensures faster queries

Q: Should you use an ORM?

- It depends on the project/team
- Always
- Almost never
- Almost always