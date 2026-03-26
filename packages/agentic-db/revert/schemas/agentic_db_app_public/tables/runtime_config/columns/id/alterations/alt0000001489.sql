-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/id/alterations/alt0000001489


ALTER TABLE "agentic_db_app_public".runtime_config 
  ALTER COLUMN id DROP NOT NULL;


