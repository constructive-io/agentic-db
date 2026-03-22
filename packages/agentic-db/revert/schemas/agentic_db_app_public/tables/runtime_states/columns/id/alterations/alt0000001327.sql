-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/id/alterations/alt0000001327


ALTER TABLE "agentic_db_app_public".runtime_states 
  ALTER COLUMN id DROP NOT NULL;


