-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/name/alterations/alt0000001829
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ALTER COLUMN name SET NOT NULL;

