-- Deploy: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_occurred_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/occurred_at/column
-- requires: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_activity_type_idx


CREATE INDEX activity_logs_occurred_at_idx ON agentic_db_app_public.activity_log USING BTREE ( occurred_at );

