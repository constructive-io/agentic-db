-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  DROP COLUMN updated_at RESTRICT;


