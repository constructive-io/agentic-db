-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/entity_id/alterations/alt0000002549
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/entity_id/column


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN entity_id SET NOT NULL;

