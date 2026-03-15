-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/name/alterations/alt0000001801
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  ALTER COLUMN name SET NOT NULL;

