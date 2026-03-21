-- Revert: schemas/agentic_db_app_public/tables/chats/columns/created_at/column


ALTER TABLE agentic_db_app_public.chats 
  DROP COLUMN created_at RESTRICT;


