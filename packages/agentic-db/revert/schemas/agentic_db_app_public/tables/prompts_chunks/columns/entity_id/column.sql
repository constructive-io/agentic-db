-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.prompts_chunks 
  DROP COLUMN entity_id RESTRICT;


