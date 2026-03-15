-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/id/alterations/alt0000002166
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

