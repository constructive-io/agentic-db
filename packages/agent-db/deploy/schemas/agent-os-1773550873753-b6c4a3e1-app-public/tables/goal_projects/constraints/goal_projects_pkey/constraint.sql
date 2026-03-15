-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/constraints/goal_projects_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_projects 
  ADD CONSTRAINT goal_projects_pkey PRIMARY KEY (id);

