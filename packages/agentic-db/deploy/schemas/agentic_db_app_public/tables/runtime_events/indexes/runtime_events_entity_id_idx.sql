-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/indexes/runtime_events_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000006028


CREATE INDEX runtime_events_entity_id_idx ON agentic_db_app_public.runtime_events USING BTREE ( entity_id );

