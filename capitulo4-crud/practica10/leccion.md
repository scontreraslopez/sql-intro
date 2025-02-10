<div class="viewer p-4"><h1>Finding NULL Values</h1>
<p>You can use a <code>WHERE</code> clause to filter values by whether or not they’re <code>NULL</code>.</p>
<details open="">
<summary>
<h2>IS NULL</h2>
</summary>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> name <span class="token keyword keyword-from">FROM</span> users <span class="token keyword keyword-where">WHERE</span> first_name <span class="token operator">IS</span> <span class="token boolean">NULL</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="SELECT name FROM users WHERE first_name IS NULL;" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
</details>
<details open="">
<summary>
<h2>IS NOT NULL</h2>
</summary>

<div style="position: relative">
	<pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> name <span class="token keyword keyword-from">FROM</span> users <span class="token keyword keyword-where">WHERE</span> first_name <span class="token operator">IS</span> <span class="token operator">NOT</span> <span class="token boolean">NULL</span><span class="token punctuation">;</span>
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="SELECT name FROM users WHERE first_name IS NOT NULL;" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>The way we store transactions at CashPal is interesting. We store a <code>user_id</code> field on the <code>transactions</code> table. That user is the “owner” of the transaction, and a <code>user_id</code> is never null.</p>
<p>Whenever the owner of the transaction <em>receives</em> money, the <code>sender_id</code> will not be null - it will be the user id of the sender. The <code>recipient_id</code> will be null.</p>
<p>Whenever the owner of the transaction <em>sends</em> money, the <code>recipient_id</code> will not be null - it will be the user id of the recipient. The <code>sender_id</code> will be null.</p>
<p><strong>Select all the rows and their columns from the transactions table where the owner of the transactions is receiving money.</strong></p>
</details>
</div>