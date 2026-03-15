-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  ADD COLUMN entity_id uuid;

