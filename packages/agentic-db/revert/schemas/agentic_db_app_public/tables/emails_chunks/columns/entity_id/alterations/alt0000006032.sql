-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/entity_id/alterations/alt0000006032


ALTER TABLE agentic_db_app_public.emails_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


