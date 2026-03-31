-- Revert: schemas/agentic_db_app_public/tables/thread_participants/constraints/thread_participants_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.thread_participants 
  DROP CONSTRAINT thread_participants_entity_id_fkey;


