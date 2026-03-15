-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/indexes/org_owner_grants_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/columns/entity_id/column


CREATE INDEX org_owner_grants_entity_id_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants USING BTREE ( entity_id );

