-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/embedding_stale/alterations/alt0000005543


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN embedding_stale DROP NOT NULL;


