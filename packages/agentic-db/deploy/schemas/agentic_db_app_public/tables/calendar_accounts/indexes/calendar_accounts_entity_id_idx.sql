-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/indexes/calendar_accounts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/entity_id/column


CREATE INDEX calendar_accounts_entity_id_idx ON agentic_db_app_public.calendar_accounts USING BTREE ( entity_id );

