-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/id/alterations/alt0000013329


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN id DROP NOT NULL;


