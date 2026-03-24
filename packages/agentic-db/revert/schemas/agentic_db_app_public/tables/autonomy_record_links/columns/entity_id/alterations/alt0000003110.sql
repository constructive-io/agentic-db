-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/entity_id/alterations/alt0000003110


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  ALTER COLUMN entity_id DROP NOT NULL;


