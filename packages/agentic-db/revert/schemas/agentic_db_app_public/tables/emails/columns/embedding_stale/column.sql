-- Revert: schemas/agentic_db_app_public/tables/emails/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN embedding_stale RESTRICT;


