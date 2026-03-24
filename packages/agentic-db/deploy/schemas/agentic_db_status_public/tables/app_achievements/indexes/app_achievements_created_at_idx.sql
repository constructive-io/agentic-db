-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/indexes/app_achievements_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/app_achievements/columns/created_at/column


CREATE INDEX app_achievements_created_at_idx ON agentic_db_status_public.app_achievements ( created_at );

