-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/alterations/alt0000001654
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  DISABLE ROW LEVEL SECURITY;

