<div class="viewer p-4"><h1>Schema</h1>
<p>We’ve used the word <em>schema</em> a few times now, let’s talk about what that word means. A database’s <a href="https://www.ibm.com/think/topics/database-schema" target="_blank" rel="noopener nofollow">schema</a> describes how data is organized within it.</p>
<p>Data types, table names, field names, constraints, and the relationships between all of those entities are part of a database’s <em>schema</em>.</p>
<details open="">
<summary>
<h2>There Is No Perfect Way to Architect a Database Schema</h2>
</summary>
<p>When designing a database schema there typically isn’t a “correct” solution. We do our best to choose a sane set of tables, fields, constraints, etc that will accomplish our project’s goals. Like many things in programming, different schema designs come with different tradeoffs.</p>
</details>
<details open="">
<summary>
<h2>How Do We Decide on a Sane Schema Architecture?</h2>
</summary>
<p>Let’s use <em>CashPal</em> as an example. One very important decision that needs to be made is to decide which table will store a user’s balance! As you can imagine, ensuring our data is accurate when dealing with money is <em>super</em> important. We want to be able to:</p>
<ul>
<li>Keep track of a user’s current balance</li>
<li>See the historical balance at any point in the past</li>
<li>See a log of which transactions changed the balance over time</li>
</ul>
<p>There are many ways to approach this problem. For our first attempt, let’s try the <em>simplest schema that fulfills our project’s needs</em>.</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>The architecture team at CashPal has decided on a single <code>transactions</code> table. The <code>transactions</code> table stores individual transactions, and we can keep track of the “current balance” on each transaction record. If we want the current balance, we can just look at the most recent transaction!</p>
<p>Create the <code>transactions</code> table with the following fields and constraints:</p>
<ul>
<li><code>id</code> - <code>INTEGER</code> <code>PRIMARY KEY</code></li>
<li><code>sender_id</code> - <code>INTEGER</code></li>
<li><code>recipient_id</code> - <code>INTEGER</code></li>
<li><code>memo</code> - <code>TEXT</code> - <code>NOT NULL</code></li>
<li><code>amount</code> - <code>INTEGER</code> - <code>NOT NULL</code></li>
<li><code>balance</code> - <code>INTEGER</code> - <code>NOT NULL</code></li>
</ul>
</details>
</div>