-- Revert: schemas/agentic_db_app_public/tables/sessions/constraints/sessions_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.sessions 
  DROP CONSTRAINT sessions_entity_id_fkey;


