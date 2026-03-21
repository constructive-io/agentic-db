-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/entity_id/column


CREATE INDEX skill_executions_entity_id_idx ON agentic_db_app_public.skill_executions USING BTREE ( entity_id );

