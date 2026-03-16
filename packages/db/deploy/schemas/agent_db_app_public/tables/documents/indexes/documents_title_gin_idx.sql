-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/title/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_title_gin_idx


CREATE INDEX documents_title_gin_idx ON "agent_db_app_public".documents USING gin ( title gin_trgm_ops );

