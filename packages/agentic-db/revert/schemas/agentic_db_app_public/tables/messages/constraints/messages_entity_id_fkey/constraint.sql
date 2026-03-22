-- Revert: schemas/agentic_db_app_public/tables/messages/constraints/messages_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.messages 
  DROP CONSTRAINT messages_entity_id_fkey;


