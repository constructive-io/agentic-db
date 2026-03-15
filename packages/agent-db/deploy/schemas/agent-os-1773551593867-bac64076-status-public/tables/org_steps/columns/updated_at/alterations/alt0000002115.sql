-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/updated_at/alterations/alt0000002115
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN updated_at SET DEFAULT now();

