-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/id/alterations/alt0000004301


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ALTER COLUMN id DROP NOT NULL;


