-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000002131


ALTER TABLE "agentic_db_app_public".execution_log 
  ALTER COLUMN updated_at DROP NOT NULL;


