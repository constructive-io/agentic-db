-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN contact_id RESTRICT;


