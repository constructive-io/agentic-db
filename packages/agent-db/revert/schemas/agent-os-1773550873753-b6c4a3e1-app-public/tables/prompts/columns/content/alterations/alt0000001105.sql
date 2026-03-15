-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/content/alterations/alt0000001105


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  ALTER COLUMN content DROP NOT NULL;


