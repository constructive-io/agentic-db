-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/content/alterations/alt0000001764


ALTER TABLE "agentic_db_app_public".goal_chunks 
  ALTER COLUMN content DROP NOT NULL;


