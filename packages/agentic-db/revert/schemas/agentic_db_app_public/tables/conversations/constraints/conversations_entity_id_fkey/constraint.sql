-- Revert: schemas/agentic_db_app_public/tables/conversations/constraints/conversations_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.conversations 
  DROP CONSTRAINT conversations_entity_id_fkey;


