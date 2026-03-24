-- Deploy: schemas/agentic_db_app_public/tables/calendars/indexes/calendars_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE INDEX calendars_entity_id_idx ON "agentic_db_app_public".calendars USING BTREE ( entity_id );

