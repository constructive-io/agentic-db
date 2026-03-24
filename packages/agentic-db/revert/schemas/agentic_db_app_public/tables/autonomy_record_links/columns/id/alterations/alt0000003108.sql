-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/id/alterations/alt0000003108


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  ALTER COLUMN id DROP NOT NULL;


