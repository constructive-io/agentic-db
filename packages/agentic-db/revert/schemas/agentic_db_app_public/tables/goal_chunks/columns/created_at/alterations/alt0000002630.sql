-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/created_at/alterations/alt0000002630


ALTER TABLE "agentic_db_app_public".goal_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


