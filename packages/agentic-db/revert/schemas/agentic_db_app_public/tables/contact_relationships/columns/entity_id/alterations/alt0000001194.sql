-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/columns/entity_id/alterations/alt0000001194


ALTER TABLE "agentic_db_app_public".contact_relationships 
  ALTER COLUMN entity_id DROP NOT NULL;


