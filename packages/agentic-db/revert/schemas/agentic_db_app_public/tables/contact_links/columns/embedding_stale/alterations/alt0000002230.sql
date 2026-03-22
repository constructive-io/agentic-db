-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/embedding_stale/alterations/alt0000002230


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN embedding_stale DROP NOT NULL;


