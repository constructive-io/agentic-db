-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".prompts 
  DROP COLUMN updated_at RESTRICT;


