-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/id/alterations/alt0000001857
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants 
  ALTER COLUMN id SET NOT NULL;

