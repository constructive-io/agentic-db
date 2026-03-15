-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/id/alterations/alt0000002263
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

