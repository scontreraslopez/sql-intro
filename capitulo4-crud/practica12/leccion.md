<div class="viewer p-4"><h1>The Danger of Deleting Data</h1>
<p>Deleting data can be a dangerous operation. Once removed, data can be really hard if not <em>impossible</em> to restore! Let’s talk about a couple of common ways back-end engineers protect against losing valuable customer data.</p>
<p><video src="https://storage.googleapis.com/qvault-webapp-dynamic-assets/lesson_videos/database-backups.mp4" controls="" controlslist="nodownload" preload="metadata" playsinline="" width="1080&quot;" poster="https://storage.googleapis.com/qvault-webapp-dynamic-assets/course_assets/gUNRY9t.png">
Your browser does not support playing HTML5 video.
You can <a href="https://storage.googleapis.com/qvault-webapp-dynamic-assets/lesson_videos/database-backups.mp4" download="">download the file</a> instead.
Here is a description of the content: database backups
</video></p>
<details open="">
<summary>
<h2>Strategy 1 - Backups</h2>
</summary>
<p>If you’re using a cloud-service like GCP’s <a href="https://cloud.google.com/sql" target="_blank" rel="noopener nofollow">Cloud SQL</a> or AWS’s <a href="https://aws.amazon.com/rds/" target="_blank" rel="noopener nofollow">RDS</a> you should <em>always</em> turn on automated backups. They take an automatic snapshot of your entire database on some interval, and keep it around for some length of time.</p>
<p>For example, the Boot.dev database has a backup snapshot taken daily and we retain those backups for 30 days. If I ever accidentally run a query that deletes valuable data, I can restore it from the backup.</p>
<p><strong>You should have a backup strategy for production databases.</strong></p>
</details>
<details open="">
<summary>
<h2>Strategy 2 - Soft Deletes</h2>
</summary>
<p>A “soft delete” is when you don’t <em>actually</em> delete data from your database, but instead just “mark” the data as deleted. For example, you might set a <code>deleted_at</code> date on the row you want to delete. Then, in your queries you ignore anything that has a <code>deleted_at</code> date set. The idea is that this allows your application to behave as if it’s deleting data, but you can always go back and restore any data that’s been removed.</p>
<p>You should probably only soft-delete if you have a specific reason to do so. Automated backups should be “good enough” for most applications that are just interested in protecting against developer mistakes.</p>
</details>
</div>

Q: You should ____ have automated backups being taken of a production database

- Sometimes
- Never
- Almost never
- Almost always

Q: A soft-delete is where you ____

- Mark a row as deleted instead of acutally removing the data.
- Delete some data, but it's not actually removed from the database for 30 days.
- Delete some data by asking your database in a nice soothing voice. Usually with 'please'
- Delete data from a snapshot.

