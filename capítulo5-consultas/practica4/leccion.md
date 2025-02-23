<div class="viewer p-4"><h1>Distinct</h1>
<p>Sometimes we want to retrieve records from a table without getting back any duplicates.</p>
<p>For example, we may want to know all the different companies our employees have worked at previously, but we don't want to see the same company multiple times in the report.</p>
<details open="">
<summary>
<h2>SELECT DISTINCT</h2>
</summary>
<p>SQL offers us the <code>DISTINCT</code> keyword that removes duplicate records from the resulting query.</p>

<div style="position: relative">
  <pre class="language-sql" tabindex="0"><code class="language-sql"><span class="token keyword keyword-select">SELECT</span> <span class="token keyword keyword-distinct">DISTINCT</span> previous_company
    <span class="token keyword keyword-from">FROM</span> employees<span class="token punctuation">;</span>
</code></pre>

  <button class="markdown-it-code-copy absolute right-2 top-1 z-10 m-1 h-6 w-6 cursor-pointer rounded bg-gray-950 focus:outline-white hover:opacity-50" data-clipboard-text="SELECT DISTINCT previous_company
    FROM employees;" title="Copy to clipboard" data-event-click="true">
    <svg xmlns="http://www.w3.org/2000/svg" stroke="gray" fill="gray-950" viewBox="0 0 24 24" stroke-width="1.5" class="w-6 h-6"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 7.5V6.108c0-1.135.845-2.098 1.976-2.192.373-.03.748-.057 1.123-.08M15.75 18H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08M15.75 18.75v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5A3.375 3.375 0 006.375 7.5H5.25m11.9-3.664A2.251 2.251 0 0015 2.25h-1.5a2.251 2.251 0 00-2.15 1.586m5.8 0c.065.21.1.433.1.664v.75h-6V4.5c0-.231.035-.454.1-.664M6.75 7.5H4.875c-.621 0-1.125.504-1.125 1.125v12c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V16.5a9 9 0 00-9-9z" aria-labelledby="copy icon"></path></svg>
  </button>
</div>
<p>This only returns one row for each unique <code>previous_company</code> value.</p>
</details>
<details open="">
<summary>
<h2>Assignment</h2>
</summary>
<p><em>CashPal</em> executives want to know which countries we have customers in. We store <code>country_code</code> data as a column on the <code>users</code> table.</p>
<p>Run a <code>DISTINCT</code> query to get all the unique <code>country_code</code>s from the <code>users</code> table.</p>
</details>
</div>