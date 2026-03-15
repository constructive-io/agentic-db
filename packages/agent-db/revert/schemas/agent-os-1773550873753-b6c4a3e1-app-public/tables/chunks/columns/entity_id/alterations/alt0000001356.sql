-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/columns/entity_id/alterations/alt0000001356


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


