-- Revert: schemas/agentic_db_app_public/tables/rules/columns/entity_id/alterations/alt0000001272


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN entity_id DROP NOT NULL;


