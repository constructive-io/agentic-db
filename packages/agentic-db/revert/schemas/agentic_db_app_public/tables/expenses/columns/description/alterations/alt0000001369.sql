-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/description/alterations/alt0000001369


ALTER TABLE "agentic_db_app_public".expenses 
  ALTER COLUMN description DROP NOT NULL;


