<div class="viewer p-4"><h1>Relational vs. Non-Relational Databases</h1>
<p>The big difference between relational and non-relational databases is that non-relational databases <em>nest</em> their data. Instead of keeping records on separate tables, they store records <em>within other records</em>.</p>
<p>To over-simplify it, you can think of non-relational databases as giant JSON blobs. If a user can have multiple courses, you might just add all the courses to the user record.</p>

<div style="position: relative">
	<pre class="language-json" tabindex="0"><code class="language-json">{
    "users": [
        {
            "id": 0,
            "name": "Elon",
            "courses": [
                {
                    "name": "Biology",
                    "id": 0
                },
                {
                    "name": "Biology",
                    "id": 0
                }
            ]
        }
    ]
}
</code></pre>

	<button class="markdown-it-code-copy absolute top-1 right-2 cursor-pointer outline-none z-10" data-clipboard-text="{
    &quot;users&quot;: [
        {
            &quot;id&quot;: 0,
            &quot;name&quot;: &quot;Elon&quot;,
            &quot;courses&quot;: [
                {
                    &quot;name&quot;: &quot;Biology&quot;,
                    &quot;id&quot;: 0
                },
                {
                    &quot;name&quot;: &quot;Biology&quot;,
                    &quot;id&quot;: 0
                }
            ]
        }
    ]
}" title="Copy to clipboard" data-event-click="true">
    <img src="/img/copy_icon.svg" alt="Copy icon" class="display-block w-6 h-6 m-1 focus:opacity-50">
  </button>
</div>
<p>This often results in <em>duplicate data</em> within the database. That’s obviously less than ideal, but it does have some benefits that we’ll talk about later in the course.</p>
<details open="">
<summary>
<h2>Relational Database</h2>
</summary>
<p><img src="https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/Ogx4ICa.jpg" alt="Relational Database"></p>
</details>
<details open="">
<summary>
<h2>Non-Relational Database</h2>
</summary>
<p><img src="https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/36gbplf.jpeg" alt="relational vs non-relational"></p>
</details>
</div>

Q: How many courses is Sam enrolled in?
5
4
3
1

Q: How many students are in the ASP.NET MVC course?
5
4
3
1


Q: ____ databases often duplicate data, while ____ databases typically don't.
- Relational, non-relational
- Non-relational, relational


Q: Non relational databases connect similar entities by using ____
- Nested data
- Keys
- Flubber
- Concurrency
