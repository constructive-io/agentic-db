-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/events/columns/entity_id/column


CREATE INDEX events_entity_id_idx ON agentic_db_app_public.events USING BTREE ( entity_id );

