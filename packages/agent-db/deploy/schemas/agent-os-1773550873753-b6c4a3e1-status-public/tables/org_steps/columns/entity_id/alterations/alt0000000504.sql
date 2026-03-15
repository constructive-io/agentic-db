-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/entity_id/alterations/alt0000000504
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  ALTER COLUMN entity_id SET NOT NULL;

