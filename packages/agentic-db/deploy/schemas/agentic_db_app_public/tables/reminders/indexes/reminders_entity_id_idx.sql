-- Deploy: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/entity_id/column


CREATE INDEX reminders_entity_id_idx ON agentic_db_app_public.reminders USING BTREE ( entity_id );

