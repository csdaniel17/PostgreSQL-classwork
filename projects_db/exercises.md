## Problems

* Do a cartesian join between the project table and the tech table

```sql
select
	project.name, tech.name
from
	project, tech;
```


* Perform a left outer join between the project table and the project_uses_tech tables

```sql
select
	*
from
	project
left outer join
	project_uses_tech on project.id = project_uses_tech.project_id;
```


* Perform a left outer join between the tech table and the project_uses_tech table

```sql
select
	*
from
	tech
left outer join
	project_uses_tech on tech.id = project_uses_tech.tech_id;
```


* Perform a left outer join from the project table to the project_users_tech table and then left outer join again to the tech table.

```sql
select
	*
from
	project
left outer join
	project_uses_tech on project.id = project_uses_tech.project_id
left outer join
	tech on tech.id = project_uses_tech.tech_id;
```


* Start from the answer on the previous problem and get the count of how many different tech each project uses

```sql
select
	project.name,
	count(tech.name)
from
	project
left outer join
	project_uses_tech on project.id = project_uses_tech.project_id
left outer join
	tech on tech.id = project_uses_tech.tech_id
group by
	project.id;
```


* For each tech, get the count of how many projects use it

```sql
select
	tech.name,
	count(project.name)
from
	tech
left outer join
	project_uses_tech on tech.id = project_uses_tech.tech_id
left outer join
	project on project.id = project_uses_tech.project_id
group by
	tech.id;
```


* Rank each project by how many tech it uses

```sql
select
	project.name,
	count(tech.name)
from
	project
left outer join
	project_uses_tech on project.id = project_uses_tech.project_id
left outer join
	tech on tech.id = project_uses_tech.tech_id
group by
	project.id
order by
	count(tech.name) desc;
```


* Rank each tech by how many projects use it

```sql
select
	tech.name,
	count(project.name)
from
	tech
left outer join
	project_uses_tech on tech.id = project_uses_tech.tech_id
left outer join
	project on project.id = project_uses_tech.project_id
group by
	tech.id
order by
	count(project.name) desc;
```


* What is the average number of techs used by a project?

```sql
select
	avg(count)
from
(
select
	project.name,
	count(tech.name)
from
	project
left outer join
	project_uses_tech on project.id = project_uses_tech.project_id
left outer join
	tech on tech.id = project_uses_tech.tech_id
group by
	project.id
order by
	count(tech.name) desc
) as project_by_tech_count;
```
