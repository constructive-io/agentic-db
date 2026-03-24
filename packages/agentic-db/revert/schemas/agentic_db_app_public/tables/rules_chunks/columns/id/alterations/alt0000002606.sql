-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/id/alterations/alt0000002606


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN id DROP NOT NULL;


