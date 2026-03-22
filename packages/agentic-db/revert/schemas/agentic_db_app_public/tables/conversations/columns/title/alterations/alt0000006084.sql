-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/title/alterations/alt0000006084


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN title DROP NOT NULL;


