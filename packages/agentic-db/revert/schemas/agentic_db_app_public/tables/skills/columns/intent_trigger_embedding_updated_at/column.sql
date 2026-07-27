-- Revert: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger_embedding_updated_at/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN intent_trigger_embedding_updated_at RESTRICT;


