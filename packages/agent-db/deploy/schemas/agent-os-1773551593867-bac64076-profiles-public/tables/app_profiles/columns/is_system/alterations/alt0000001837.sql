-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/is_system/alterations/alt0000001837
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/is_system/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ALTER COLUMN is_system SET NOT NULL;

