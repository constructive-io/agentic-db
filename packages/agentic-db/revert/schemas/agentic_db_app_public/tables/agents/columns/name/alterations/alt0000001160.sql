-- Revert: schemas/agentic_db_app_public/tables/agents/columns/name/alterations/alt0000001160


ALTER TABLE "agentic_db_app_public".agents 
  ALTER COLUMN name DROP NOT NULL;


