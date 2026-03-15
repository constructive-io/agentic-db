-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/name/alterations/alt0000001790
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  ALTER COLUMN name SET NOT NULL;

