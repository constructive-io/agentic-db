-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/id/alterations/alt0000001656
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/table
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  ALTER COLUMN id SET NOT NULL;

