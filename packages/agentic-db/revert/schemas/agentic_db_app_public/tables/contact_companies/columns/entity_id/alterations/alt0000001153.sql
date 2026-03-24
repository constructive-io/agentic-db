-- Revert: schemas/agentic_db_app_public/tables/contact_companies/columns/entity_id/alterations/alt0000001153


ALTER TABLE "agentic_db_app_public".contact_companies 
  ALTER COLUMN entity_id DROP NOT NULL;


