-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/slug/alterations/alt0000001831
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/slug/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ALTER COLUMN slug SET NOT NULL;

