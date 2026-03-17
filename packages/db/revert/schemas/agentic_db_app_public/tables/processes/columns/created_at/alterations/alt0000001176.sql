-- Revert: schemas/agentic_db_app_public/tables/processes/columns/created_at/alterations/alt0000001176


ALTER TABLE "agentic_db_app_public".processes 
  ALTER COLUMN created_at DROP NOT NULL;


