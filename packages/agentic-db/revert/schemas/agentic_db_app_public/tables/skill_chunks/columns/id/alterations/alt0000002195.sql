-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/id/alterations/alt0000002195


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN id DROP NOT NULL;


