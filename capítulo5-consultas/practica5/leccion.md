<div class="viewer p-4"><h1>Logical Operators - AND</h1>
<p>We often need to use <em>multiple</em> conditions to retrieve the exact information we want. We can begin to structure much more complex queries by using multiple conditions together to narrow down the search results of our query.</p>
<p>The logical <code>AND</code> operator can be used to narrow down our result sets even more!</p>
<details open="">
<summary>
<h2>AND Operator</h2>
</summary>

<div style="position: relative">
  <pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> product_name<span class="token punctuation">,</span> quantity<span class="token punctuation">,</span> shipment_status
    <span class="token keyword keyword-from">FROM</span> products
    <span class="token keyword keyword-where">WHERE</span> shipment_status <span class="token operator">=</span> <span class="token string">'pending'</span>
    <span class="token operator">AND</span> quantity <span class="token operator">BETWEEN</span> <span class="token number">0</span> <span class="token operator">and</span> <span class="token number">10</span><span class="token punctuation">;</span>
</code></pre>

  <button class="markdown-it-code-copy absolute right-2 top-1 z-10 m-1 h-6 w-6 cursor-pointer rounded bg-gray-950 focus:outline-white hover:opacity-50" data-clipboard-text="SELECT product_name, quantity, shipment_status
    FROM products
    WHERE shipment_status = 'pending'
    AND quantity BETWEEN 0 and 10;" title="Copy to clipboard" data-event-click="true">
    <svg xmlns="http://www.w3.org/2000/svg" stroke="gray" fill="gray-950" viewBox="0 0 24 24" stroke-width="1.5" class="w-6 h-6"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 7.5V6.108c0-1.135.845-2.098 1.976-2.192.373-.03.748-.057 1.123-.08M15.75 18H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08M15.75 18.75v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5A3.375 3.375 0 006.375 7.5H5.25m11.9-3.664A2.251 2.251 0 0015 2.25h-1.5a2.251 2.251 0 00-2.15 1.586m5.8 0c.065.21.1.433.1.664v.75h-6V4.5c0-.231.035-.454.1-.664M6.75 7.5H4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V16.5a9 9 0 00-9-9z" aria-labelledby="copy icon"></path></svg>
  </button>
</div>
<p>This only retrieves records where <em>both</em> the <code>shipment_status</code> is "pending" <em>AND</em> the <code>quantity</code> is between <code>0</code> and <code>10</code>.</p>
</details>
<details open="">
<summary>
<h2>Equality Operators</h2>
</summary>
<p>All of the following operators are supported in SQL. The <code>=</code> is the main one to watch out for, it's not <code>==</code> like in many other languages! SQLite does allow for <code>==</code> but it's not a good habit to get into, as other dialects of SQL will not recognize <code>==</code> as valid syntax.</p>
<ul>
<li><code>=</code></li>
<li><code>&lt;</code></li>
<li><code>&gt;</code></li>
<li><code>&lt;=</code></li>
<li><code>&gt;=</code></li>
</ul>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>The legal restrictions in Canada have changed! The way we have to handle Canadian minors' CashPal transactions is more strict. We need to find all of those users, so we can see how many users this change affects!</p>
<p>Write a query that retrieves all of the fields from the <code>users</code> table who are from Canada (<code>CA</code>), and are under the age of <code>18</code>.</p>
</details>
</div>