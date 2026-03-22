-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/entity_id/alterations/alt0000006043
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/alterations/alt0000006039


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN entity_id SET NOT NULL;

