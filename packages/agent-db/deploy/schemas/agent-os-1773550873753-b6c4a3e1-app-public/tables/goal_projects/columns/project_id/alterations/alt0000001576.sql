-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/columns/project_id/alterations/alt0000001576
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/columns/project_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_projects 
  ALTER COLUMN project_id SET NOT NULL;

