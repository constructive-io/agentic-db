-- Deploy: schemas/agentic_db_status_public/tables/org_levels/indexes/org_levels_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/org_levels/columns/created_at/column


CREATE INDEX org_levels_created_at_idx ON agentic_db_status_public.org_levels ( created_at );

