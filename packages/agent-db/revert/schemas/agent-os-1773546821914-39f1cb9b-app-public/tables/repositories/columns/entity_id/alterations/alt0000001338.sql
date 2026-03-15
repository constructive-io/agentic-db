-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/entity_id/alterations/alt0000001338


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ALTER COLUMN entity_id DROP NOT NULL;


