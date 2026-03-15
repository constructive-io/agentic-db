-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/title/alterations/alt0000002751
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/title/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/updated_at/alterations/alt0000002750


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".blueprints 
  ALTER COLUMN title SET NOT NULL;

