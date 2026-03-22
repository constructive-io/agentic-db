-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/id/alterations/alt0000001663


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN id DROP NOT NULL;


