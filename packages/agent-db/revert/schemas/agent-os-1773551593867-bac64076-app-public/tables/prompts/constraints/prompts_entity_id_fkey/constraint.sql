-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/constraints/prompts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  DROP CONSTRAINT prompts_entity_id_fkey;


