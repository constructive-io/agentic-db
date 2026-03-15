-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/is_grant/alterations/alt0000001817
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants.is_grant IS E'True to assign the profile, false to revoke it';

