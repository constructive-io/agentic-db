-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/entity_id/column


ALTER TABLE agentic_db_app_public.company_images 
  DROP COLUMN entity_id RESTRICT;


