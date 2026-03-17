-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/updated_at/alterations/alt0000001445


ALTER TABLE "agentic_db_app_public".ideas 
  ALTER COLUMN updated_at DROP NOT NULL;


