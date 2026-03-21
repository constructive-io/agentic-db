-- Revert: schemas/agentic_db_app_public/tables/threads/columns/updated_at/alterations/alt0000002155


ALTER TABLE "agentic_db_app_public".threads 
  ALTER COLUMN updated_at DROP NOT NULL;


