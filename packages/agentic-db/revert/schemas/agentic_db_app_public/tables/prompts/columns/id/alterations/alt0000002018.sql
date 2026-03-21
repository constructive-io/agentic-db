-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/id/alterations/alt0000002018


ALTER TABLE "agentic_db_app_public".prompts 
  ALTER COLUMN id DROP NOT NULL;


