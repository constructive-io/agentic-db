-- Revert: schemas/agentic_db_app_public/tables/messages/columns/role/alterations/alt0000003794


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN role DROP NOT NULL;


