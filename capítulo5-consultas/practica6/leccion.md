<div class="viewer p-4"><h1>OR</h1>
<p>As you've probably guessed, if the logical <code>AND</code> operator is supported, the <code>OR</code> operator is probably supported as well.</p>

<div style="position: relative">
  <pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> product_name<span class="token punctuation">,</span> quantity<span class="token punctuation">,</span> shipment_status
    <span class="token keyword keyword-from">FROM</span> products
    <span class="token keyword keyword-where">WHERE</span> shipment_status <span class="token operator">=</span> <span class="token string">'out of stock'</span>
    <span class="token operator">OR</span> quantity <span class="token operator">BETWEEN</span> <span class="token number">10</span> <span class="token operator">and</span> <span class="token number">100</span><span class="token punctuation">;</span>
</code></pre>

  <button class="markdown-it-code-copy absolute right-2 top-1 z-10 m-1 h-6 w-6 cursor-pointer rounded bg-gray-950 focus:outline-white hover:opacity-50" data-clipboard-text="SELECT product_name, quantity, shipment_status
    FROM products
    WHERE shipment_status = 'out of stock'
    OR quantity BETWEEN 10 and 100;" title="Copy to clipboard" data-event-click="true">
    <svg xmlns="http://www.w3.org/2000/svg" stroke="gray" fill="gray-950" viewBox="0 0 24 24" stroke-width="1.5" class="w-6 h-6"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 7.5V6.108c0-1.135.845-2.098 1.976-2.192.373-.03.748-.057 1.123-.08M15.75 18H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08M15.75 18.75v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5A3.375 3.375 0 006.375 7.5H5.25m11.9-3.664A2.251 2.251 0 0015 2.25h-1.5a2.251 2.251 0 00-2.15 1.586m5.8 0c.065.21.1.433.1.664v.75h-6V4.5c0-.231.035-.454.1-.664M6.75 7.5H4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V16.5a9 9 0 00-9-9z" aria-labelledby="copy icon"></path></svg>
  </button>
</div>
<p>This query retrieves records where <em>either</em> the <code>shipment_status</code> condition <em>OR</em> the <code>quantity</code> condition are met.</p>
<details open="">
<summary>
<h2>Order of Operations</h2>
</summary>
<p>You can group logical operations with parentheses to specify the <a href="https://www.mathsisfun.com/operation-order-pemdas.html" target="_blank" rel="noopener nofollow">order of operations</a>.</p>

<div style="position: relative">
  <pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token punctuation">(</span>this <span class="token operator">AND</span> that<span class="token punctuation">)</span> <span class="token operator">OR</span> the_other
</code></pre>

  <button class="markdown-it-code-copy absolute right-2 top-1 z-10 m-1 h-6 w-6 cursor-pointer rounded bg-gray-950 focus:outline-white hover:opacity-50" data-clipboard-text="(this AND that) OR the_other" title="Copy to clipboard" data-event-click="true">
    <svg xmlns="http://www.w3.org/2000/svg" stroke="gray" fill="gray-950" viewBox="0 0 24 24" stroke-width="1.5" class="w-6 h-6"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 7.5V6.108c0-1.135.845-2.098 1.976-2.192.373-.03.748-.057 1.123-.08M15.75 18H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08M15.75 18.75v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5A3.375 3.375 0 006.375 7.5H5.25m11.9-3.664A2.251 2.251 0 0015 2.25h-1.5a2.251 2.251 0 00-2.15 1.586m5.8 0c.065.21.1.433.1.664v.75h-6V4.5c0-.231.035-.454.1-.664M6.75 7.5H4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V16.5a9 9 0 00-9-9z" aria-labelledby="copy icon"></path></svg>
  </button>
</div>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>The laws have changed again! Now we need to see how many affected users meet this criteria:</p>
<blockquote>
<p>Users who are from the United States or Canada, and are under 18</p>
</blockquote>
<p>Write a query that retrieves the <em>count</em> of every user (renamed as just <code>junior_count</code>) that matches the conditions above.</p>
</details>
</div>