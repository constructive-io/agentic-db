-- Revert: schemas/agentic_db_app_public/tables/company_memories/columns/entity_id/alterations/alt0000004818


ALTER TABLE agentic_db_app_public.company_memories 
  ALTER COLUMN entity_id DROP NOT NULL;


