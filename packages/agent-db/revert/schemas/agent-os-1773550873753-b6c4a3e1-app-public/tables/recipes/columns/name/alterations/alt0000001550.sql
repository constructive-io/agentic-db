-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/name/alterations/alt0000001550


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  ALTER COLUMN name DROP NOT NULL;


