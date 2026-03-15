-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/indexes/org_profile_grants_membership_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/membership_id/column


CREATE INDEX org_profile_grants_membership_id_idx ON "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants USING BTREE ( membership_id );

