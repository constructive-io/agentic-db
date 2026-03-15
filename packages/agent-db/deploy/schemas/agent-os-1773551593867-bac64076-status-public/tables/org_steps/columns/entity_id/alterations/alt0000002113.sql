-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/entity_id/alterations/alt0000002113
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN entity_id SET NOT NULL;

