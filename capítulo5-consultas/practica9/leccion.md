<div class="viewer p-4"><h1>Underscore Operator</h1>
<p>As discussed, the <code>%</code> wildcard operator matches zero or more characters. Meanwhile, the <code>_</code> wildcard operator only matches a <em>single</em> character.</p>

<div style="position: relative">
  <pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> <span class="token operator">*</span> <span class="token keyword keyword-from">FROM</span> products
    <span class="token keyword keyword-where">WHERE</span> product_name <span class="token operator">LIKE</span> <span class="token string">'_oot'</span><span class="token punctuation">;</span>
</code></pre>

  <button class="markdown-it-code-copy absolute right-2 top-1 z-10 m-1 h-6 w-6 cursor-pointer rounded bg-gray-950 focus:outline-white hover:opacity-50" data-clipboard-text="SELECT * FROM products
    WHERE product_name LIKE '_oot';" title="Copy to clipboard" data-event-click="true">
    <svg xmlns="http://www.w3.org/2000/svg" stroke="gray" fill="gray-950" viewBox="0 0 24 24" stroke-width="1.5" class="w-6 h-6"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 7.5V6.108c0-1.135.845-2.098 1.976-2.192.373-.03.748-.057 1.123-.08M15.75 18H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08M15.75 18.75v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5A3.375 3.375 0 006.375 7.5H5.25m11.9-3.664A2.251 2.251 0 0015 2.25h-1.5a2.251 2.251 0 00-2.15 1.586m5.8 0c.065.21.1.433.1.664v.75h-6V4.5c0-.231.035-.454.1-.664M6.75 7.5H4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V16.5a9 9 0 00-9-9z" aria-labelledby="copy icon"></path></svg>
  </button>
</div>
<p>The query above matches products like:</p>
<ul>
<li>boot</li>
<li>root</li>
<li>foot</li>
</ul>

<div style="position: relative">
  <pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> <span class="token operator">*</span> <span class="token keyword keyword-from">FROM</span> products
    <span class="token keyword keyword-where">WHERE</span> product_name <span class="token operator">LIKE</span> <span class="token string">'__oot'</span><span class="token punctuation">;</span>
</code></pre>

  <button class="markdown-it-code-copy absolute right-2 top-1 z-10 m-1 h-6 w-6 cursor-pointer rounded bg-gray-950 focus:outline-white hover:opacity-50" data-clipboard-text="SELECT * FROM products
    WHERE product_name LIKE '__oot';" title="Copy to clipboard" data-event-click="true">
    <svg xmlns="http://www.w3.org/2000/svg" stroke="gray" fill="gray-950" viewBox="0 0 24 24" stroke-width="1.5" class="w-6 h-6"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 7.5V6.108c0-1.135.845-2.098 1.976-2.192.373-.03.748-.057 1.123-.08M15.75 18H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08M15.75 18.75v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5A3.375 3.375 0 006.375 7.5H5.25m11.9-3.664A2.251 2.251 0 0015 2.25h-1.5a2.251 2.251 0 00-2.15 1.586m5.8 0c.065.21.1.433.1.664v.75h-6V4.5c0-.231.035-.454.1-.664M6.75 7.5H4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V16.5a9 9 0 00-9-9z" aria-labelledby="copy icon"></path></svg>
  </button>
</div>
<p>The query above matches products like:</p>
<ul>
<li>shoot</li>
<li>groot</li>
</ul>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p>HR has been able to narrow down their query further! They want a report of all user data for users whose names start with <code>Al</code> <em>and are exactly 5 characters long</em>.</p>
</details>
</div>