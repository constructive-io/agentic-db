-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/embedding_stale/alterations/alt0000013081


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN embedding_stale DROP NOT NULL;


