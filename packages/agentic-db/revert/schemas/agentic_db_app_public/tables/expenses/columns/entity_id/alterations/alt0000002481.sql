-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/entity_id/alterations/alt0000002481


ALTER TABLE "agentic_db_app_public".expenses 
  ALTER COLUMN entity_id DROP NOT NULL;


