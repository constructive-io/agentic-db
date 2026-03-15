-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/indexes/org_profile_permissions_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/profile_id/column


CREATE INDEX org_profile_permissions_profile_id_idx ON "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions USING BTREE ( profile_id );

