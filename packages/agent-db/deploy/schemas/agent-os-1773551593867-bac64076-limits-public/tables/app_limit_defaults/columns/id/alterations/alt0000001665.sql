-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/columns/id/alterations/alt0000001665
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limit_defaults 
  ALTER COLUMN id SET NOT NULL;

