-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/indexes/sessions_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/updated_at/column


CREATE INDEX sessions_updated_at_idx ON "agent-os-1773547105079-c748b4c3-auth-private".sessions ( updated_at );

