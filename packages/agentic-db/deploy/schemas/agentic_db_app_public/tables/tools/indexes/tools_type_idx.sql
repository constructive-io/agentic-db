-- Deploy: schemas/agentic_db_app_public/tables/tools/indexes/tools_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/type/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_schedule_type_idx


CREATE INDEX tools_type_idx ON "agentic_db_app_public".tools USING BTREE ( type );

