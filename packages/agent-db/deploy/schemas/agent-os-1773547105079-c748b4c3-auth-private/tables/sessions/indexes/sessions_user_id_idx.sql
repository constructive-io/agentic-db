-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/indexes/sessions_user_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/user_id/column


CREATE INDEX sessions_user_id_idx ON "agent-os-1773547105079-c748b4c3-auth-private".sessions USING BTREE ( user_id );

