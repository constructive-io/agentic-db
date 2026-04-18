-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/indexes/skill_tools_skill_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/columns/skill_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE INDEX skill_tools_skill_id_idx ON agentic_db_app_public.skill_tools USING BTREE ( skill_id );

