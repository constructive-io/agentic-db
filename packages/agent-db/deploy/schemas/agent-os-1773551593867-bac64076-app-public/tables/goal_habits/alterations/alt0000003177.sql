-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_habits/alterations/alt0000003177
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_habits 
  DISABLE ROW LEVEL SECURITY;

