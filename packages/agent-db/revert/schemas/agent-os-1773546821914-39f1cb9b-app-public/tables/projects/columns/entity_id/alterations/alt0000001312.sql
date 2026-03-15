-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/entity_id/alterations/alt0000001312


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  ALTER COLUMN entity_id DROP NOT NULL;


