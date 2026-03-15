-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/permission_id/alterations/alt0000000265
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/permission_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_definition_grants 
  ALTER COLUMN permission_id SET NOT NULL;

