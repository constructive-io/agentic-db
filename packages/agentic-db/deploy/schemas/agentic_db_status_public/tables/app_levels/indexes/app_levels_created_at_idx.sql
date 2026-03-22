-- Deploy: schemas/agentic_db_status_public/tables/app_levels/indexes/app_levels_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table
-- requires: schemas/agentic_db_status_public/tables/app_levels/columns/created_at/column


CREATE INDEX app_levels_created_at_idx ON agentic_db_status_public.app_levels ( created_at );

