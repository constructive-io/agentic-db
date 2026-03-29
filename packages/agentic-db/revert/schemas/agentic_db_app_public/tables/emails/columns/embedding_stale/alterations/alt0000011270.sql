-- Revert: schemas/agentic_db_app_public/tables/emails/columns/embedding_stale/alterations/alt0000011270


ALTER TABLE agentic_db_app_public.emails 
  ALTER COLUMN embedding_stale DROP NOT NULL;


