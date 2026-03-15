-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ADD COLUMN entity_id uuid;

