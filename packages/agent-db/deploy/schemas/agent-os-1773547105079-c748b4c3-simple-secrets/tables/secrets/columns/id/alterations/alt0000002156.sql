-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/id/alterations/alt0000002156
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

