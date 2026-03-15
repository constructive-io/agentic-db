-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  DROP COLUMN intent_trigger RESTRICT;


