-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/occurred_at/alterations/alt0000000927


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  ALTER COLUMN occurred_at DROP NOT NULL;


