-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/entity_id/alterations/alt0000002082


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


