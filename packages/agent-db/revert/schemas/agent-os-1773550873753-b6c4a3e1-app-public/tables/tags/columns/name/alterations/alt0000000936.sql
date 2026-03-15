-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/name/alterations/alt0000000936


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
  ALTER COLUMN name DROP NOT NULL;


