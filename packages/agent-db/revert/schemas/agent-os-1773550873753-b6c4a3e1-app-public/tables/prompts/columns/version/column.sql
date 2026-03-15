-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/version/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  DROP COLUMN version RESTRICT;


