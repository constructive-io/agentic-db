-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/created_at/alterations/alt0000002114
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN created_at SET DEFAULT now();

