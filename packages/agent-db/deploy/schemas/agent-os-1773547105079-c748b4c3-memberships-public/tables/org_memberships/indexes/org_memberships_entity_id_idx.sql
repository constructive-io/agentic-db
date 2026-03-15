-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/indexes/org_memberships_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/entity_id/column


CREATE INDEX org_memberships_entity_id_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships USING BTREE ( entity_id );

