-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/alterations/alt0000001568
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_habits 
  DISABLE ROW LEVEL SECURITY;

