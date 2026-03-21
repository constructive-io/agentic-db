-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/constraints/prompt_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.prompt_chunks 
  DROP CONSTRAINT prompt_chunks_entity_id_fkey;


