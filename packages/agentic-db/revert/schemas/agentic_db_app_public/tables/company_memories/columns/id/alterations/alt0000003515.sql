-- Revert: schemas/agentic_db_app_public/tables/company_memories/columns/id/alterations/alt0000003515


ALTER TABLE agentic_db_app_public.company_memories 
  ALTER COLUMN id DROP NOT NULL;


