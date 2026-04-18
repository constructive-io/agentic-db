-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/chunk_index/alterations/alt0000000680


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


