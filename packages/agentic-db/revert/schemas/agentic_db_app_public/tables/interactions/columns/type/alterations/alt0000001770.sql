-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/type/alterations/alt0000001770


ALTER TABLE "agentic_db_app_public".interactions 
  ALTER COLUMN type DROP NOT NULL;


