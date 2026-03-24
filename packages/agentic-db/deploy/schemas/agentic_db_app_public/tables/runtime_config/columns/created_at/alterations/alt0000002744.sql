-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/created_at/alterations/alt0000002744
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/created_at/column


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN created_at SET NOT NULL;

