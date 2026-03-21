-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/id/alterations/alt0000002202


ALTER TABLE "agentic_db_app_public".workflows 
  ALTER COLUMN id DROP NOT NULL;


