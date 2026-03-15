-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/occurred_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  DROP COLUMN occurred_at RESTRICT;


