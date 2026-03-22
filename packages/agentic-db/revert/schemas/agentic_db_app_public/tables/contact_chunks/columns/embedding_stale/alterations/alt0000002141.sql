-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding_stale/alterations/alt0000002141


ALTER TABLE agentic_db_app_public.contact_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


