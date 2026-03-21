-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/content/alterations/alt0000002603


ALTER TABLE "agentic_db_app_public".ideas 
  ALTER COLUMN content DROP NOT NULL;


