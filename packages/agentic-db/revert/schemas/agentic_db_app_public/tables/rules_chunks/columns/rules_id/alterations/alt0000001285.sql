-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/rules_id/alterations/alt0000001285


ALTER TABLE "agentic_db_app_public".rules_chunks 
  ALTER COLUMN rules_id DROP NOT NULL;


