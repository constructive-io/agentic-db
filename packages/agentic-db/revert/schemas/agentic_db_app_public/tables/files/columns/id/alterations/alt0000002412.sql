-- Revert: schemas/agentic_db_app_public/tables/files/columns/id/alterations/alt0000002412


ALTER TABLE "agentic_db_app_public".files 
  ALTER COLUMN id DROP NOT NULL;


