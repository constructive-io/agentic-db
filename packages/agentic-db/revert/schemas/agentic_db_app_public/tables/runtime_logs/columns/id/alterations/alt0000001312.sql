-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/id/alterations/alt0000001312


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN id DROP NOT NULL;


