-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  DROP COLUMN updated_at RESTRICT;


