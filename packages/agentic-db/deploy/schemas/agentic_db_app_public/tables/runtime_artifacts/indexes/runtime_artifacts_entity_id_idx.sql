-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/indexes/runtime_artifacts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/entity_id/column


CREATE INDEX runtime_artifacts_entity_id_idx ON "agentic_db_app_public".runtime_artifacts USING BTREE ( entity_id );

