-- Revert: schemas/agentic_db_app_public/tables/company_memories/columns/company_id/alterations/alt0000003513


ALTER TABLE agentic_db_app_public.company_memories 
  ALTER COLUMN company_id DROP NOT NULL;


