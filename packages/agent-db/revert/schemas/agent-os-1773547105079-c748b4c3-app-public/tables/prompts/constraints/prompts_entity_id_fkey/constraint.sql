-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/constraints/prompts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  DROP CONSTRAINT prompts_entity_id_fkey;


