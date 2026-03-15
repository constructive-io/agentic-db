-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/indexes/org_profile_grants_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/profile_id/column


CREATE INDEX org_profile_grants_profile_id_idx ON "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants USING BTREE ( profile_id );

