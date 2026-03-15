-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_prompts/constraints/agent_prompts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_prompts 
  DROP CONSTRAINT agent_prompts_entity_id_fkey;


