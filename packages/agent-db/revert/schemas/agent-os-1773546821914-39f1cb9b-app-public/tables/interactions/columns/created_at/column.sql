-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  DROP COLUMN created_at RESTRICT;


