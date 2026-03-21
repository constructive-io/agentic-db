-- Revert: schemas/agentic_db_app_public/tables/threads/constraints/threads_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.threads 
  DROP CONSTRAINT threads_entity_id_fkey;


