-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/expires_at/alterations/alt0000002172
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/expires_at/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
    ALTER COLUMN expires_at SET DEFAULT (NOW() + interval '30 days');

