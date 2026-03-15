-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/id/alterations/alt0000002659
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

