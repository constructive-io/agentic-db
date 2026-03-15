-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/steps/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/title/alterations/alt0000002751


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".blueprints 
  ADD COLUMN steps jsonb;

