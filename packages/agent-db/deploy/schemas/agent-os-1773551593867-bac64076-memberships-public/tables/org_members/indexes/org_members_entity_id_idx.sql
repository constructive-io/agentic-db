-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/indexes/org_members_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/entity_id/column


CREATE INDEX org_members_entity_id_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_members USING BTREE ( entity_id );

