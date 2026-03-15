-- Revert: schemas/agent_db_app_public/tables/interactions/columns/occurred_at/alterations/alt0000004097


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN occurred_at DROP NOT NULL;


