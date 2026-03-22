-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/entity_id/alterations/alt0000006021
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/meta/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/entity_id/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ALTER COLUMN entity_id SET NOT NULL;

