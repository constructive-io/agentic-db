-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/id/alterations/alt0000001097


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  ALTER COLUMN id DROP NOT NULL;


