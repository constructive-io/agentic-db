-- Revert: schemas/agentic_db_app_public/tables/agents/columns/id/alterations/alt0000001226


ALTER TABLE "agentic_db_app_public".agents 
  ALTER COLUMN id DROP NOT NULL;


