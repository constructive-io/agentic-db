-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/profile_id/alterations/alt0000000471
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/profile_id/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants.profile_id IS E'References the profile being assigned; NULL indicates the profile was removed';

