-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/is_system/alterations/alt0000000230
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/is_system/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles.is_system IS E'System profiles are built-in and cannot be deleted or renamed by users';

