-- Revert: schemas/agentic_db_app_public/tables/processes/columns/updated_at/alterations/alt0000002174


ALTER TABLE "agentic_db_app_public".processes 
  ALTER COLUMN updated_at DROP NOT NULL;


