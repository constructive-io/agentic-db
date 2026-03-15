-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/content/alterations/alt0000002666
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/content/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/name/alterations/alt0000002665


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ALTER COLUMN content SET NOT NULL;

