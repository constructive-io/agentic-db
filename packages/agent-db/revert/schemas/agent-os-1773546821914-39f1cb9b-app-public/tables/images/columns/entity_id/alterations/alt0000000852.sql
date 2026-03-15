-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/entity_id/alterations/alt0000000852


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ALTER COLUMN entity_id DROP NOT NULL;


