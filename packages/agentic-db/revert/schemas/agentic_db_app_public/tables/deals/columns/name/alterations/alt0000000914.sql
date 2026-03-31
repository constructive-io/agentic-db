-- Revert: schemas/agentic_db_app_public/tables/deals/columns/name/alterations/alt0000000914


ALTER TABLE "agentic_db_app_public".deals 
  ALTER COLUMN name DROP NOT NULL;


