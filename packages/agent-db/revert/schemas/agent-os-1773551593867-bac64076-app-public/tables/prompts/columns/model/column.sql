-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/model/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  DROP COLUMN model RESTRICT;


