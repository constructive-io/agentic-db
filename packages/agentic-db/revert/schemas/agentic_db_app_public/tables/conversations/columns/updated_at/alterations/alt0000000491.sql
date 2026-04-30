-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/alterations/alt0000000491


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN updated_at DROP NOT NULL;


