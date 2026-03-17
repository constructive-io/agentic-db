-- Revert: schemas/agentic_db_app_public/tables/processes/columns/id/alterations/alt0000001173


ALTER TABLE "agentic_db_app_public".processes 
  ALTER COLUMN id DROP NOT NULL;


