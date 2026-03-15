-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/is_grant/alterations/alt0000000476
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants.is_grant IS E'True to assign the profile, false to revoke it';

