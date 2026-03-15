-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/entity_id/alterations/alt0000000910


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN entity_id DROP NOT NULL;


