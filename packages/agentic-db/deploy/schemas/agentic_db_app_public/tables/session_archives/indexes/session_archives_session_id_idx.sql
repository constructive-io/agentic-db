-- Deploy: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/session_id/column
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/indexes/workflow_runs_workflow_id_idx


CREATE INDEX session_archives_session_id_idx ON agentic_db_app_public.session_archives USING BTREE ( session_id );

