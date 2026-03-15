-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/indexes/app_memberships_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/updated_at/column


CREATE INDEX app_memberships_updated_at_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships ( updated_at );

