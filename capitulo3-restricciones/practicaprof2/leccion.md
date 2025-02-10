<div class="viewer p-4"><h1>Create a Foreign Key</h1>
<p>We managed to fix the <code>banks</code> table but now we want to have the added safety of foreign key constraints on our <code>users</code> table. For this challenge, the <code>users</code> table contains a <code>bank_id</code>, we want to make sure that the user’s <code>bank_id</code> references an <code>id</code> from the <code>banks</code> table.</p>
<details open="">
<summary>
<h2>Challenge</h2>
</summary>
<p>Change the table creation statement to include a <code>FOREIGN KEY</code> constraint on the <code>users</code> table named <code>fk_banks</code> that <code>REFERENCES</code> an ID from the <code>banks</code> table.</p>
</details>
</div>