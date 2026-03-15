-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goals 
  ADD COLUMN updated_at timestamptz;

