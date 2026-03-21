-- Deploy: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column


CREATE INDEX activity_logs_entity_id_idx ON "agentic_db_app_public".activity_log USING BTREE ( entity_id );

