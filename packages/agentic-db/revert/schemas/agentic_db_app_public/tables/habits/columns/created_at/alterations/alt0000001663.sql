-- Revert: schemas/agentic_db_app_public/tables/habits/columns/created_at/alterations/alt0000001663


ALTER TABLE "agentic_db_app_public".habits 
  ALTER COLUMN created_at DROP NOT NULL;


