-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/skill_id/alterations/alt0000001318


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN skill_id DROP NOT NULL;


