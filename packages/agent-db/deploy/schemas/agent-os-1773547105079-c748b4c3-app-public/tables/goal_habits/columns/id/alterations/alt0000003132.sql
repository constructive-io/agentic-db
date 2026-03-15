-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/columns/id/alterations/alt0000003132
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_habits 
  ALTER COLUMN id SET NOT NULL;

