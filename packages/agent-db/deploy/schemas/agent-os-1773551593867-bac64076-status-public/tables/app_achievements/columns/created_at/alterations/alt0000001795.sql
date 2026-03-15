-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/created_at/alterations/alt0000001795
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ALTER COLUMN created_at SET DEFAULT now();

