-- Revert: schemas/agentic_db_app_public/tables/raw_messages/constraints/raw_messages_pkey/constraint


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP CONSTRAINT raw_messages_pkey;


