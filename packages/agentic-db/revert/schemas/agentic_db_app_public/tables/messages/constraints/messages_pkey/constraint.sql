-- Revert: schemas/agentic_db_app_public/tables/messages/constraints/messages_pkey/constraint


ALTER TABLE agentic_db_app_public.messages 
  DROP CONSTRAINT messages_pkey;


