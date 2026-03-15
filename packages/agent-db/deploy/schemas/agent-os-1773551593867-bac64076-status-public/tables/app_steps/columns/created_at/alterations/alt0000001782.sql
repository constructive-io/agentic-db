-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/created_at/alterations/alt0000001782
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  ALTER COLUMN created_at SET DEFAULT now();

