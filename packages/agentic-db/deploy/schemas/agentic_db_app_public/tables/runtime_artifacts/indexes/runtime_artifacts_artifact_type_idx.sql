-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/indexes/runtime_artifacts_artifact_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/artifact_type/column


CREATE INDEX runtime_artifacts_artifact_type_idx ON agentic_db_app_public.runtime_artifacts USING BTREE ( artifact_type );

