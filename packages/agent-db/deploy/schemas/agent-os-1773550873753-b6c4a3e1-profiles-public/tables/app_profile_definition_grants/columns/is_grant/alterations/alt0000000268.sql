-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000000268
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_definition_grants 
  ALTER COLUMN is_grant SET NOT NULL;

