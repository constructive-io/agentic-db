-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/entity_id/alterations/alt0000001175


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".threads 
  ALTER COLUMN entity_id DROP NOT NULL;


