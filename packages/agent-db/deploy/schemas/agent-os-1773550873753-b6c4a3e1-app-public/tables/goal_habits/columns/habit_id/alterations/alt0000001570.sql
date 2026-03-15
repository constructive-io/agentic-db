-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/columns/habit_id/alterations/alt0000001570
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_habits/columns/habit_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goal_habits 
  ALTER COLUMN habit_id SET NOT NULL;

