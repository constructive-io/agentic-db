-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/companies/indexes/companies_name_gin_idx


CREATE INDEX events_name_gin_idx ON agentic_db_app_public.events USING gin ( name gin_trgm_ops );

