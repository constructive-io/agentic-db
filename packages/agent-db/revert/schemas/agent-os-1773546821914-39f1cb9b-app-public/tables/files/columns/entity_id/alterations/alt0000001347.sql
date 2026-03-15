-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/entity_id/alterations/alt0000001347


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
  ALTER COLUMN entity_id DROP NOT NULL;


