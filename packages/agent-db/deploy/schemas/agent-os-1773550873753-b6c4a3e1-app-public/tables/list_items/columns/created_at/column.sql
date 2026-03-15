-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".list_items 
  ADD COLUMN created_at timestamptz;

