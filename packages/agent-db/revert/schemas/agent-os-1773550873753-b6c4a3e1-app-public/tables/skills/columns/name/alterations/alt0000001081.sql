-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/name/alterations/alt0000001081


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
  ALTER COLUMN name DROP NOT NULL;


