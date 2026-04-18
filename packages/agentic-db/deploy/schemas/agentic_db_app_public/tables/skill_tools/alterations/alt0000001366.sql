-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/alterations/alt0000001366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.skill_tools IS E'@behavior +manyToMany';

