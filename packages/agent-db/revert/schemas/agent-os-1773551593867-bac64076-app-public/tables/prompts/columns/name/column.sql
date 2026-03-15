-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  DROP COLUMN name RESTRICT;


