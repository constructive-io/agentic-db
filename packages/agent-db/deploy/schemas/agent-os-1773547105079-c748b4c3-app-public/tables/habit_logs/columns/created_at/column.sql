-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ADD COLUMN created_at timestamptz;

