-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/entity_id/alterations/alt0000001401


ALTER TABLE "agentic_db_app_public".runtime_states 
  ALTER COLUMN entity_id DROP NOT NULL;


