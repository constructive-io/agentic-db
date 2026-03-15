-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/indexes/org_memberships_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/profile_id/column


CREATE INDEX org_memberships_profile_id_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships USING BTREE ( profile_id );

