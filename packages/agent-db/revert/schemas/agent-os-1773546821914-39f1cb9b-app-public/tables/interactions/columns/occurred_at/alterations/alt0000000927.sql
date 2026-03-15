-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/occurred_at/alterations/alt0000000927


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ALTER COLUMN occurred_at DROP NOT NULL;


