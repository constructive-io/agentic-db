-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN intent_trigger RESTRICT;


