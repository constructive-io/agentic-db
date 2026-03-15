-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/created_at/alterations/alt0000001866
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants 
  ALTER COLUMN created_at SET DEFAULT now();

