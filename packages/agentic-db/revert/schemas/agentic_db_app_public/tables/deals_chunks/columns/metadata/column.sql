-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN metadata RESTRICT;


