-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/constraints/skill_executions_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  DROP CONSTRAINT skill_executions_entity_id_fkey;


