-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/runtime_state_id/alterations/alt0000003064
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/runtime_state_id/column


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ALTER COLUMN runtime_state_id SET NOT NULL;

