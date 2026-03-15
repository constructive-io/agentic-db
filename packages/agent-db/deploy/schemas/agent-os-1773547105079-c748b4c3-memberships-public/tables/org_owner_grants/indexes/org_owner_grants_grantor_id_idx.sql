-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/indexes/org_owner_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/columns/grantor_id/column


CREATE INDEX org_owner_grants_grantor_id_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".org_owner_grants USING BTREE ( grantor_id );

