-- Revert: schemas/agentic_db_app_public/tables/tags/columns/entity_id/alterations/alt0000003501


ALTER TABLE agentic_db_app_public.tags 
  ALTER COLUMN entity_id DROP NOT NULL;


