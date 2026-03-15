-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants 
  ADD COLUMN updated_at timestamptz;

