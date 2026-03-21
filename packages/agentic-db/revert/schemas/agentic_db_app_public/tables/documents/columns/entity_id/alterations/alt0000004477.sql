-- Revert: schemas/agentic_db_app_public/tables/documents/columns/entity_id/alterations/alt0000004477


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN entity_id DROP NOT NULL;


