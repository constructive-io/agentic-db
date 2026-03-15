-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_system/alterations/alt0000002057
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_system/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profiles.is_system IS E'System profiles are built-in and cannot be deleted or renamed by users';

