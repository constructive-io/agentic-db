-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goal_projects 
  ADD COLUMN id uuid;

