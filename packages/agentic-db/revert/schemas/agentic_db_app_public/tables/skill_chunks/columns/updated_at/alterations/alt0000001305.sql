-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/updated_at/alterations/alt0000001305


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


