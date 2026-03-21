-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_skill_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/skill_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_output_gin_idx


CREATE INDEX skill_executions_skill_id_idx ON "agentic_db_app_public".skill_executions USING BTREE ( skill_id );

