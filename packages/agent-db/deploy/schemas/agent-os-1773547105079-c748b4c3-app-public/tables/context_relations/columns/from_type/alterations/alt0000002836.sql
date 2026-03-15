-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/from_type/alterations/alt0000002836
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/from_type/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/updated_at/alterations/alt0000002835


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN from_type SET NOT NULL;

