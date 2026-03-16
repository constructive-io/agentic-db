-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/content/alterations/alt0000001447


ALTER TABLE "agentic_db_app_public".ideas 
  ALTER COLUMN content DROP NOT NULL;


