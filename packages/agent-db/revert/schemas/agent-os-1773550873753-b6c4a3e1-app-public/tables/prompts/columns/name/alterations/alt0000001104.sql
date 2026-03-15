-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/name/alterations/alt0000001104


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  ALTER COLUMN name DROP NOT NULL;


