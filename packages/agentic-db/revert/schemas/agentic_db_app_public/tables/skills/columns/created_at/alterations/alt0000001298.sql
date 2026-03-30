-- Revert: schemas/agentic_db_app_public/tables/skills/columns/created_at/alterations/alt0000001298


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN created_at DROP NOT NULL;


