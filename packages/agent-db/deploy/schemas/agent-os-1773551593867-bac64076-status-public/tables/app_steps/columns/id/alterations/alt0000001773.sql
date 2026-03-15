-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/id/alterations/alt0000001773
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  ALTER COLUMN id SET NOT NULL;

