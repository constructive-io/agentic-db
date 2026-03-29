-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/title/alterations/alt0000005643


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN title DROP NOT NULL;


