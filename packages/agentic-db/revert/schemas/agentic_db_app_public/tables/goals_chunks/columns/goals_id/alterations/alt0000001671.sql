-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/goals_id/alterations/alt0000001671


ALTER TABLE "agentic_db_app_public".goals_chunks 
  ALTER COLUMN goals_id DROP NOT NULL;


