-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/occurred_at/alterations/alt0000001037


ALTER TABLE "agentic_db_app_public".interactions 
  ALTER COLUMN occurred_at DROP NOT NULL;


