-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/is_system/alterations/alt0000000228
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/is_system/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles 
  ALTER COLUMN is_system SET NOT NULL;

