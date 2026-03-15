-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ADD COLUMN entity_id uuid;

