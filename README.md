Ruby Developer Homework
================

Completed User Stories
----------------
 - A user should not be able to complete a task when creating it.
>I changed the `complete` input field from a `check_box` to a hidden field that defaulted as "false", so that users wouldn't have the option to make tasks complete during creation.

 - A user can filter their view by complete or incomplete tasks.
>I created some links and set params to them that I used as conditional logic in the controller which determines what tasks to show based on completeness.

 - A user's default view is filtered to show only incomplete tasks.
 >In the above step, I made incomplete tasks the default logic.

 - A user should be able to keep multiple lists.
 >I created a `List` model and made tasks belong to a list.

 - A user should have access to only their tasks. (may require devise or a creative, lightweight auth system)
>I added a `User` model and made lists belong to users (and tasks belong to users through lists). I used `bcrypt` to create simple authentication and sessions.
 
 - A user viewing a task should see a history of all its changes. (task audit trail)
 >I've never done this before, so this was a fun challenge. I found a gem called `audited` and added it to my gem file, then made an `Audit` table. Then I added audits to the show page for each task. 

Incomplete User Stories
----------------
 - A user should be able to see a history of all completed tasks and associated actions. (app audit trail)

Cleanup tasks
----------------
- Consolidate the repeated code between the create and edit feature specs for tasks.

